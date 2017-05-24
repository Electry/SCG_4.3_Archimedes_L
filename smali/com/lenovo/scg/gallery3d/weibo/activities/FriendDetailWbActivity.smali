.class public Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
.super Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;
.source "FriendDetailWbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;,
        Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;
    }
.end annotation


# static fields
.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final MSG_REFRESH_LIST:I = 0x3

.field private static final MSG_RESULT_OPENURL_ERROR:I = 0x2

.field private static final MSG_RESULT_STATUSES:I = 0x1

.field private static final RANDOM_BASE:D = 0.04761905

.field private static final REQUST_CODE_MY_GALLERY_PICKED:I = 0x1

.field private static final REQUST_CODE_PHOTOGRAPHER_PICKED:I = 0x2

.field private static final REQUST_CODE_PHOTO_PICKED_WITH_DATA:I = 0x0

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADMORE:I = 0x2

.field private static final STATE_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "panhui4_FriendDetailWbActivity"

.field public static final VALUE_UID_DEFAULT:I = -0x1

.field public static mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;


# instance fields
.field private isMe:Z

.field private mAccessTokenStr:Ljava/lang/String;

.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mErrorHandler:Landroid/os/Handler;

.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

.field private mFriendDetailStatusesItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerNotify:Landroid/os/Handler;

.field private mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;

.field private mIsFirst:Z

.field private mPhotoFileName:Ljava/lang/String;

.field private mRlWbLayout:Landroid/widget/RelativeLayout;

.field private mScreenName:Ljava/lang/String;

.field private mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

.field private mState:I

.field private mStatusesTotalNumber:I

.field private mStatusesUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUid:J

.field private mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

.field private mWbEmptyView:Landroid/widget/LinearLayout;

.field private mWbFooterView:Landroid/widget/RelativeLayout;

.field private mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

.field private mWeiboReceiver:Landroid/content/BroadcastReceiver;

.field private onLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;-><init>()V

    .line 112
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mRlWbLayout:Landroid/widget/RelativeLayout;

    .line 146
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mScreenName:Ljava/lang/String;

    .line 404
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandlerNotify:Landroid/os/Handler;

    .line 678
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;

    .line 749
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->onLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    .line 849
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWeiboReceiver:Landroid/content/BroadcastReceiver;

    .line 1010
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$9;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mErrorHandler:Landroid/os/Handler;

    .line 1258
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$11;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandler:Landroid/os/Handler;

    .line 1469
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mRlWbLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadData()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mIsFirst:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setBackgroundImage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->updateTitleName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mScreenName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setEmptyView(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->cleanSlidingWindowCache()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadFriendsStatuses(ZJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->showTips(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;

    return-object v0
.end method

.method private cleanReference()V
    .locals 2

    .prologue
    .line 956
    const-string/jumbo v0, "panhui4_FriendDetailWbActivity"

    const-string v1, "clearWBFrinedDetailReference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->clean()V

    .line 960
    :cond_0
    return-void
.end method

.method private cleanSlidingWindowCache()V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;->cleanAllCache()V

    .line 966
    :cond_0
    return-void
.end method

.method private configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 12
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
    .line 972
    const/4 v7, 0x0

    .line 973
    .local v7, "result":Ljava/lang/String;
    new-instance v6, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v6}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 974
    .local v6, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mAccessTokenStr:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 975
    const-string v8, "access_token"

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 978
    move-wide v0, p3

    invoke-virtual {v6, p2, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 980
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 981
    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v6, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 983
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 984
    move-object/from16 v0, p7

    move-wide/from16 v1, p8

    invoke-virtual {v6, v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 986
    :cond_3
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 987
    move-object/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {v6, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 991
    :cond_4
    :try_start_0
    move-object/from16 v0, p12

    invoke-static {p0, p1, v0, v6}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 1008
    :goto_0
    return-object v7

    .line 993
    :catch_0
    move-exception v5

    .line 994
    .local v5, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v5}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 995
    const-string/jumbo v8, "panhui4_FriendDetailWbActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configueOpenUrl, WeiboException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v8, "configueOpenUrl WeiboException=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/weibo/sdk/android/WeiboException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 997
    .end local v5    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v4

    .line 998
    .local v4, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 999
    const-string/jumbo v8, "panhui4_FriendDetailWbActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configueOpenUrl, UnknownHostException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-string v8, "configueOpenUrl UnknownHostException=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/net/UnknownHostException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1002
    .end local v4    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v3

    .line 1003
    .local v3, "eio":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1004
    const-string/jumbo v8, "panhui4_FriendDetailWbActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "configueOpenUrl, IOException="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v8, "configueOpenUrl IOException=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private doCropPhoto(Landroid/net/Uri;)V
    .locals 7
    .param p1, "filepath"    # Landroid/net/Uri;

    .prologue
    .line 280
    :try_start_0
    const-string/jumbo v2, "weibo_header_background.jpg"

    .line 281
    .local v2, "fileName":Ljava/lang/String;
    const-string/jumbo v4, "panhui4_FriendDetailWbActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mPhotoFileName:Ljava/lang/String;

    .line 283
    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "croppedPath":Ljava/lang/String;
    const-string/jumbo v4, "panhui4_FriendDetailWbActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "croppedPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getCropImageIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 295
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0    # "croppedPath":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "panhui4_FriendDetailWbActivity"

    const-string v5, "Cannot crop image"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getCropImageIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "inputPhotoPath"    # Landroid/net/Uri;
    .param p2, "croppedPhotoPath"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 307
    .local v0, "croppedPhotoUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lenovo.intent.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-static {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->addGalleryIntentExtras(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 311
    return-object v1
.end method

.method private getCurrentCount()I
    .locals 2

    .prologue
    .line 840
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 841
    const/4 v0, 0x0

    .line 846
    :goto_0
    return v0

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 846
    .local v0, "count":I
    goto :goto_0
.end method

.method private getIntentExtras()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 192
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 193
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J

    .line 194
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mScreenName:Ljava/lang/String;

    .line 195
    const-string/jumbo v2, "panhui4_FriendDetailWbActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->isMe:Z

    .line 197
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->isLoginedUser(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->isMe:Z

    .line 202
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->isMe:Z

    if-eqz v2, :cond_2

    .line 203
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J

    .line 205
    :cond_2
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    .line 206
    .local v0, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mAccessTokenStr:Ljava/lang/String;

    .line 207
    return-void
.end method

.method private getStatusesCount()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesTotalNumber:I

    return v0
.end method

.method private initViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 418
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-DD_HH_mm_ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFormat:Ljava/text/SimpleDateFormat;

    .line 420
    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .line 421
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->isMe:Z

    if-eqz v6, :cond_0

    .line 422
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setType(I)V

    .line 424
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-virtual {v6, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setChangeBackgroundListener(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;)V

    .line 429
    :goto_0
    const v6, 0x7f100a18

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 430
    .local v5, "vGroup":Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 431
    check-cast v5, Landroid/widget/RelativeLayout;

    .end local v5    # "vGroup":Landroid/view/ViewGroup;
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mRlWbLayout:Landroid/widget/RelativeLayout;

    .line 432
    const v6, 0x7f100a1f

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 433
    .restart local v5    # "vGroup":Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 435
    const v6, 0x7f100a19

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 437
    const v6, 0x7f100a1b

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbEmptyView:Landroid/widget/LinearLayout;

    .line 438
    const v6, 0x7f0f064d

    invoke-direct {p0, p0, v6, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setEmptyView(Landroid/content/Context;IZ)V

    .line 441
    const v6, 0x7f100a17

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 442
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setImageView(Landroid/widget/ImageView;)V

    .line 444
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    const v7, 0x7f100ad7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    .line 445
    .local v0, "flagViewbig":Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v6, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setFlagBigImageView(Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;)V

    .line 447
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    const v7, 0x7f100ada

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 448
    .local v1, "flagViewsmall":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v6, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setFlagSmallImageView(Landroid/widget/ImageView;)V

    .line 450
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-virtual {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 452
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 456
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    new-instance v7, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;)V

    .line 518
    const v6, 0x7f0401c3

    invoke-virtual {v2, v6, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbFooterView:Landroid/widget/RelativeLayout;

    .line 520
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbFooterView:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$3;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 575
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 576
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbFooterView:Landroid/widget/RelativeLayout;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 579
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->onLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setLoadMoreListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;)V

    .line 583
    const v6, 0x7f100a20

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 584
    .local v4, "return_btn":Landroid/widget/ImageView;
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mScreenName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->updateTitleName(Ljava/lang/String;)V

    .line 588
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->updateWBDisplayType()V

    .line 590
    const v6, 0x7f100a23

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 591
    .local v3, "nameview":Landroid/widget/TextView;
    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$4;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    return-void

    .line 426
    .end local v0    # "flagViewbig":Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;
    .end local v1    # "flagViewsmall":Landroid/widget/ImageView;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "nameview":Landroid/widget/TextView;
    .end local v4    # "return_btn":Landroid/widget/ImageView;
    .end local v5    # "vGroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setType(I)V

    goto/16 :goto_0
.end method

.method private isAllDisplay()Z
    .locals 3

    .prologue
    .line 829
    const-string/jumbo v0, "panhui4_FriendDetailWbActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statuses all size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getStatusesCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getCurrentCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getStatusesCount()I

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getCurrentCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadData()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1437
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 1438
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J

    invoke-virtual {v0, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheFriend(J)Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;

    move-result-object v1

    .line 1439
    .local v1, "friend":Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
    if-nez v1, :cond_0

    .line 1440
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mIsFirst:Z

    .line 1441
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->rotateFlagWithNothing()V

    .line 1442
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mIsFirst:Z

    .line 1443
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$12;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$12;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1452
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1467
    .end local v5    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1454
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mIsFirst:Z

    .line 1455
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1456
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1457
    iget v6, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->nTotalStatus:I

    iput v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesTotalNumber:I

    .line 1458
    iget-object v6, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1459
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 1460
    iget-object v6, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1461
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesTotalNumber:I

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatus(I)V

    .line 1462
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1465
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_1
    const/4 v6, 0x0

    invoke-direct {p0, v10, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->sendMassage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private loadFriendsStatuses(ZJ)V
    .locals 42
    .param p1, "sendMsg"    # Z
    .param p2, "max_id"    # J

    .prologue
    .line 1023
    const-string v5, "https://api.weibo.com/2/statuses/user_timeline.json"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->isMe:Z

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J

    const-string v9, "count"

    const/16 v10, 0x14

    const-wide/16 v12, -0x1

    cmp-long v4, p2, v12

    if-eqz v4, :cond_2

    const-string/jumbo v11, "max_id"

    :goto_1
    const-string v14, "feature"

    const/4 v15, 0x2

    const-string v16, "GET"

    move-object/from16 v4, p0

    move-wide/from16 v12, p2

    invoke-direct/range {v4 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1030
    .local v28, "result":Ljava/lang/String;
    if-nez v28, :cond_3

    .line 1031
    const-string/jumbo v4, "statuses result=null!!!"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1032
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->sendMassage(ILjava/lang/Object;)V

    .line 1219
    :cond_0
    :goto_2
    return-void

    .line 1023
    .end local v28    # "result":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "uid"

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1036
    .restart local v28    # "result":Ljava/lang/String;
    :cond_3
    new-instance v23, Lcom/google/gson/Gson;

    invoke-direct/range {v23 .. v23}, Lcom/google/gson/Gson;-><init>()V

    .line 1037
    .local v23, "gson":Lcom/google/gson/Gson;
    const/16 v27, 0x0

    .line 1039
    .local v27, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;
    :try_start_0
    const-class v4, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    move-object/from16 v27, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :goto_3
    if-nez v27, :cond_4

    .line 1048
    const-string/jumbo v4, "statuses response=null!!!"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1049
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->sendMassage(ILjava/lang/Object;)V

    goto :goto_2

    .line 1040
    :catch_0
    move-exception v21

    .line 1041
    .local v21, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mErrorHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mErrorHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 1043
    .local v20, "date_time":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1044
    .local v32, "sError":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wb_detail_LFStatuses_json_ex_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->writeCacheData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/Boolean;

    .line 1045
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1054
    .end local v20    # "date_time":Ljava/lang/String;
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v32    # "sError":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1059
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1064
    :cond_6
    move-object/from16 v0, v27

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->total_number:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesTotalNumber:I

    .line 1065
    const-string/jumbo v4, "panhui4_FriendDetailWbActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "statuses totalNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesTotalNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->statuses:Ljava/util/List;

    move-object/from16 v30, v0

    .line 1068
    .local v30, "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;>;"
    if-eqz v30, :cond_0

    .line 1071
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v29

    .line 1072
    .local v29, "resultSize":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    .line 1075
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_8

    if-nez v24, :cond_8

    .line 1072
    :cond_7
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1079
    :cond_8
    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    .line 1081
    .local v35, "statusesInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;

    move-result-object v4

    if-eqz v4, :cond_c

    const/16 v31, 0x1

    .line 1082
    .local v31, "retweeted_status":Z
    :goto_6
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getBmiddle_pic()Ljava/lang/String;

    move-result-object v39

    .line 1083
    .local v39, "url":Ljava/lang/String;
    if-eqz v31, :cond_9

    .line 1084
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->getBmiddle_pic()Ljava/lang/String;

    move-result-object v39

    .line 1088
    :cond_9
    if-eqz v39, :cond_7

    .line 1093
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getId()J

    move-result-wide v36

    .line 1094
    .local v36, "status_uid":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    :cond_a
    new-instance v25, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 1099
    .local v25, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicMid(Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, v25

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatusesId(J)V

    .line 1101
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmIsTweeted(Z)V

    .line 1102
    if-eqz v31, :cond_d

    .line 1103
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->getPic_urls()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setPicList(Ljava/util/List;)V

    .line 1109
    :goto_7
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->parseSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1110
    .local v34, "source":Ljava/lang/String;
    const v4, 0x7f0f0735

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v34, :cond_e

    .end local v34    # "source":Ljava/lang/String;
    :goto_8
    aput-object v34, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getText()Ljava/lang/String;

    move-result-object v17

    .line 1121
    .local v17, "content":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v40

    .line 1134
    .local v40, "userinfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    if-eqz v40, :cond_b

    .line 1136
    invoke-virtual/range {v40 .. v40}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 1138
    invoke-virtual/range {v40 .. v40}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getAvatar_large()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {v40 .. v40}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFollowers_count()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFollowers(I)V

    .line 1142
    invoke-virtual/range {v40 .. v40}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFriends_count()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFriends(I)V

    .line 1146
    move-object/from16 v0, v27

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->total_number:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatus(I)V

    .line 1148
    invoke-virtual/range {v40 .. v40}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setUserDescription(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {v40 .. v40}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 1156
    :cond_b
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getCreated_at()Ljava/lang/String;

    move-result-object v38

    .line 1157
    .local v38, "time":Ljava/lang/String;
    const-string/jumbo v4, "panhui4_FriendDetailWbActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v19, "date":Ljava/util/Date;
    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 1187
    const v4, 0x7f0f0759

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getMonth()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setMonth(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getReposts_count()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRepostsCount(I)V

    .line 1192
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getComments_count()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 1194
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getAttitudes_count()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmAttitudesCount(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1081
    .end local v17    # "content":Ljava/lang/String;
    .end local v19    # "date":Ljava/util/Date;
    .end local v25    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v31    # "retweeted_status":Z
    .end local v36    # "status_uid":J
    .end local v38    # "time":Ljava/lang/String;
    .end local v39    # "url":Ljava/lang/String;
    .end local v40    # "userinfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_c
    const/16 v31, 0x0

    goto/16 :goto_6

    .line 1105
    .restart local v25    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v31    # "retweeted_status":Z
    .restart local v36    # "status_uid":J
    .restart local v39    # "url":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getPicList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setPicList(Ljava/util/List;)V

    goto/16 :goto_7

    .line 1110
    .restart local v34    # "source":Ljava/lang/String;
    :cond_e
    const v7, 0x7f0f073d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_8

    .line 1199
    .end local v25    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v31    # "retweeted_status":Z
    .end local v34    # "source":Ljava/lang/String;
    .end local v35    # "statusesInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    .end local v36    # "status_uid":J
    .end local v39    # "url":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v18

    .line 1200
    .local v18, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    new-instance v22, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;)V

    .line 1201
    .local v22, "friend":Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->arrItems:Ljava/util/ArrayList;

    .line 1202
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesTotalNumber:I

    move-object/from16 v0, v22

    iput v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->nTotalStatus:I

    .line 1203
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mUid:J

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v5, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putCacheFriend(JLcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;)V

    .line 1205
    if-eqz p1, :cond_11

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 1207
    .local v33, "size":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getWeiboDataListener()Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;

    move-result-object v26

    .line 1208
    .local v26, "listener":Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;
    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;->onSizeChanged(I)V

    .line 1209
    const/16 v24, 0x0

    :goto_9
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_10

    .line 1210
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;->onContentChanged(I)V

    .line 1209
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 1213
    :cond_10
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->sendMassage(ILjava/lang/Object;)V

    .line 1215
    .end local v26    # "listener":Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboDataListener;
    .end local v33    # "size":I
    :cond_11
    if-nez p1, :cond_12

    .line 1216
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->sendMassage(ILjava/lang/Object;)V

    .line 1218
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2
.end method

.method private loadMore()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 759
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbFooterView:Landroid/widget/RelativeLayout;

    const v4, 0x7f100ad6

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 761
    .local v2, "imgLoadingMore":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->isAllDisplay()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I

    if-ne v3, v6, :cond_2

    .line 762
    :cond_0
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I

    if-ne v3, v6, :cond_1

    .line 763
    const v3, 0x7f0f064d

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 814
    :cond_1
    :goto_0
    return-void

    .line 768
    :cond_2
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 769
    const v3, 0x7f0f074f

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 775
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 777
    .local v0, "currentStatusMaxId":J
    new-instance v3, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Landroid/widget/ImageView;J)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private sendMassage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1254
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1255
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1256
    return-void
.end method

.method private setBackgroundImage()V
    .locals 3

    .prologue
    .line 1329
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1331
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setUserBackgroundImage()Z

    move-result v0

    .line 1333
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1335
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setDefaultBackgroundImage()V

    .line 1338
    :cond_0
    return-void
.end method

.method private setBackgroundImageFromPath(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "needSave"    # Z

    .prologue
    .line 374
    const-string/jumbo v3, "weibo_header_background.jpg"

    invoke-static {p0, v3, p2}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "croppedPath":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 378
    move-object p1, v1

    .line 381
    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 383
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .line 384
    .local v2, "saveResult":Z
    if-eqz p2, :cond_1

    .line 385
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->saveBitmapToPath(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    .line 388
    :cond_1
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBackgroundImageFromPath, saveResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",croppedPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 392
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 396
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->setUserBackgroundPath(Ljava/lang/String;)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_2
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v4, "setBackgroundImageFromPath, bm=null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDefaultBackgroundImage()V
    .locals 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    const v1, 0x7f0209c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1342
    return-void
.end method

.method private setEmptyView(Landroid/content/Context;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "isShowBtn"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbEmptyView:Landroid/widget/LinearLayout;

    const v6, 0x7f100a1c

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1223
    .local v2, "emptytext":Landroid/widget/TextView;
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1224
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    const v0, 0x7f0f064d

    if-eq p2, v0, :cond_2

    .line 1226
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1232
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbEmptyView:Landroid/widget/LinearLayout;

    const v6, 0x7f100a1e

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1233
    .local v4, "emptybtn":Landroid/widget/Button;
    if-eqz p3, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbEmptyView:Landroid/widget/LinearLayout;

    const v6, 0x7f100a1d

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1235
    .local v5, "imgHint":Landroid/widget/ImageView;
    if-eqz p3, :cond_4

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1236
    invoke-virtual {v4}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1251
    :cond_1
    return-void

    .line 1228
    .end local v4    # "emptybtn":Landroid/widget/Button;
    .end local v5    # "imgHint":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .restart local v4    # "emptybtn":Landroid/widget/Button;
    :cond_3
    move v0, v3

    .line 1233
    goto :goto_1

    .restart local v5    # "imgHint":Landroid/widget/ImageView;
    :cond_4
    move v1, v3

    .line 1235
    goto :goto_2
.end method

.method private setUserBackgroundImage()Z
    .locals 6

    .prologue
    .line 1346
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->isMe:Z

    if-nez v3, :cond_1

    .line 1347
    const/4 v2, 0x0

    .line 1366
    :cond_0
    :goto_0
    return v2

    .line 1350
    :cond_1
    const/4 v2, 0x0

    .line 1353
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserBackgroundPath()Ljava/lang/String;

    move-result-object v1

    .line 1354
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserBackgroundImage, path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1356
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1357
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1358
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1359
    const/4 v2, 0x1

    goto :goto_0

    .line 1361
    :cond_2
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v4, "setUserBackgroundImage, bm=null!! Use default image!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showTips(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, "arrItemOld":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_0

    .line 677
    :goto_0
    return-void

    .line 650
    :cond_0
    const/4 v5, 0x0

    .line 651
    .local v5, "nNewCnt":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 652
    .local v6, "sizeNew":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 653
    .local v7, "sizeOld":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 654
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 655
    .local v2, "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    const/4 v0, 0x1

    .line 656
    .local v0, "bNew":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v7, :cond_2

    .line 657
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 658
    .local v3, "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 656
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 661
    :cond_1
    const/4 v0, 0x0

    .line 665
    .end local v3    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_2
    if-eqz v0, :cond_3

    .line 666
    add-int/lit8 v5, v5, 0x1

    .line 653
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 674
    .end local v0    # "bNew":Z
    .end local v2    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "j":I
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;

    invoke-virtual {v8, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$TipsHandler;->setCount(I)V

    goto :goto_0
.end method

.method private startPhotographerActivity()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "requestIntent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    return-void
.end method

.method private startPickSinglePicsActivity()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v0, "requestIntent":Landroid/content/Intent;
    const-class v1, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 224
    const-string v1, "android.boxcontrol.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v1, "request_pics_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    return-void
.end method

.method private updateFooterView()V
    .locals 0

    .prologue
    .line 826
    return-void
.end method

.method private updateTitleName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1395
    :goto_0
    return-void

    .line 1393
    :cond_0
    const v1, 0x7f100a23

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1394
    .local v0, "nameview":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUserInfo()V
    .locals 14

    .prologue
    .line 605
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->getUserItem()Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v2

    .line 606
    .local v2, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-nez v2, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 609
    .local v8, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 610
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v11

    .line 611
    .local v11, "sName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 612
    const-string/jumbo v12, "screenName"

    invoke-interface {v0, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 614
    :cond_2
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getFriends()I

    move-result v7

    .line 615
    .local v7, "nFriends":I
    if-ltz v7, :cond_3

    .line 616
    const-string v12, "friendsCount"

    invoke-interface {v0, v12, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 618
    :cond_3
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getFollowers()I

    move-result v6

    .line 619
    .local v6, "nFollowers":I
    if-ltz v6, :cond_4

    .line 620
    const-string v12, "followsCount"

    invoke-interface {v0, v12, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 622
    :cond_4
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatus()I

    move-result v3

    .line 623
    .local v3, "nCount":I
    if-ltz v3, :cond_5

    .line 624
    const-string/jumbo v12, "statusesCount"

    invoke-interface {v0, v12, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 626
    :cond_5
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v10

    .line 627
    .local v10, "sHead":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 628
    const-string/jumbo v12, "profileImageUrl"

    invoke-interface {v0, v12, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 630
    :cond_6
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserDescription()Ljava/lang/String;

    move-result-object v9

    .line 631
    .local v9, "sDesc":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 632
    const-string v12, "description"

    invoke-interface {v0, v12, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 634
    :cond_7
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserId()J

    move-result-wide v4

    .line 635
    .local v4, "lUserId":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_8

    .line 639
    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 641
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheFriend(J)Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;

    move-result-object v1

    .line 642
    .local v1, "fi":Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
    if-eqz v1, :cond_0

    if-ltz v3, :cond_0

    .line 643
    iput v3, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->nTotalStatus:I

    goto :goto_0
.end method

.method private updateWBDisplayType()V
    .locals 3

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setIsRefresh(Z)V

    .line 1400
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 1401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    .line 1408
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    .line 1416
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    if-nez v0, :cond_2

    .line 1417
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SpeedScrollListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    .line 1418
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setListView(Landroid/widget/ListView;)V

    .line 1420
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->isMe:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setIsMe(Z)V

    .line 1421
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setWbHeader(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)V

    .line 1422
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    .line 1424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    if-nez v0, :cond_3

    .line 1425
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;-><init>(Landroid/app/Activity;Landroid/widget/BaseAdapter;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    .line 1428
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mSlidingWindow:Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setSlidingWindow(Lcom/lenovo/scg/gallery3d/weibo/ui/SlidingWindow;)V

    .line 1430
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setmArrShowItem(Ljava/util/ArrayList;)V

    .line 1431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 1432
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->setLoading(Z)V

    .line 1433
    return-void

    .line 1403
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mFriendDetailStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1411
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1412
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mStatusesUids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 317
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult, requestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v4, "requestCode == REQUST_CODE_PHOTO_PICKED_WITH_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eqz p3, :cond_0

    .line 352
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setBackgroundImageFromPath(Ljava/lang/String;Z)V

    goto :goto_0

    .line 325
    :pswitch_1
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v4, "requestCode == REQUST_CODE_MY_GALLERY_PICKED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz p3, :cond_0

    .line 328
    const-string/jumbo v3, "return_single_pic_key"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "singlePicUri":Ljava/lang/String;
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCode = BoxDataClass.M_REQUEST_CODE, singlePicUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-eqz v2, :cond_0

    .line 334
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 335
    .local v1, "inputPhotoUri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->doCropPhoto(Landroid/net/Uri;)V

    goto :goto_0

    .line 358
    .end local v1    # "inputPhotoUri":Landroid/net/Uri;
    .end local v2    # "singlePicUri":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v4, "requestCode == REQUST_CODE_PHOTOGRAPHER_PICKED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    if-eqz p3, :cond_0

    .line 361
    const-string/jumbo v3, "path"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "dataurl":Ljava/lang/String;
    const-string/jumbo v3, "panhui4_FriendDetailWbActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCode == REQUST_CODE_PHOTOGRAPHER_PICKED, dataurl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setBackgroundImageFromPath(Ljava/lang/String;Z)V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChangeBackgroundRequst(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 242
    :pswitch_0
    const-string/jumbo v0, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v1, "onMyGalleryRequst"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_friendlist"

    const-string v2, "action_weibo_sina_friendlist_changebackgrounddialog_gallery"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->startPickSinglePicsActivity()V

    goto :goto_0

    .line 254
    :pswitch_1
    const-string/jumbo v0, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v1, "onPhotographerRequst"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_friendlist"

    const-string v2, "action_weibo_sina_friendlist_changebackgrounddialog_grapher"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->startPhotographerActivity()V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getFirstVisiblePosition()I

    move-result v0

    .line 172
    .local v0, "nPos":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setSelection(I)V

    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->smoothScrollToPosition(I)V

    .line 175
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cancelAllTask()V

    .line 176
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->cancelAllTask()V

    .line 177
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->cleanReference()V

    .line 178
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->cleanSlidingWindowCache()V

    .line 180
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    .line 182
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->prepareImage()V

    .line 184
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->finish()V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x7f100a20
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 866
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 867
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->requestWindowFeature(I)Z

    .line 871
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_weibo_sina_friendlist"

    const-string v4, "action_weibo_sina_friendlist_oncreate"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 876
    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->setContext(Landroid/content/Context;I)V

    .line 877
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cacheLayout(Landroid/content/Context;)V

    .line 879
    const v2, 0x7f0401a4

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->setContentView(I)V

    .line 880
    const-string/jumbo v2, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iput v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mState:I

    .line 884
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getIntentExtras()V

    .line 886
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->initViews()V

    .line 888
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->loadData()V

    .line 891
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 892
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWeiboReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 894
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerReceiver(mNetReceiver, filter) error:%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 903
    const-string/jumbo v1, "panhui4_FriendDetailWbActivity"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;->onDestroy()V

    .line 908
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mWeiboReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onNetStateChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 925
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mRlWbLayout:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mRlWbLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f100a1a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 928
    .local v1, "tvHint":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 929
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 930
    const v2, 0x7f050052

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 931
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 932
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$8;

    invoke-direct {v2, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 944
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 947
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 948
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f073b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    const/high16 v2, 0x72ff0000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 950
    const v2, 0x7f050051

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 951
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 917
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboActivityBase;->onPause()V

    .line 919
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cancelAllTask()V

    .line 920
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->cancelAllTask()V

    .line 921
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->cleanReference()V

    .line 922
    return-void
.end method
