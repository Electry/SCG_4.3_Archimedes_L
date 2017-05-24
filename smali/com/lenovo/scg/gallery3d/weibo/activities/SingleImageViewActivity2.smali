.class public Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
.super Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;
.source "SingleImageViewActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$13;,
        Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$ThreadRepostCount;,
        Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;,
        Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetHeadPicListener;,
        Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;,
        Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$loadImageAsyncTask;
    }
.end annotation


# static fields
.field public static final COMMENT_FINIFHED:I = 0x9002

.field private static final DEBUG_TAG:Ljava/lang/String; = "wangdiyuan_debug_\u91cd\u590d"

.field public static final KEY_CHECK_ALL_REPLY:Ljava/lang/String; = "check_all_reply"

.field public static final KEY_INDEX:Ljava/lang/String; = "index"

.field public static final KEY_SATUS_ID:Ljava/lang/String; = "status_id"

.field public static final KEY_SELECT_ID:Ljava/lang/String; = "select_id"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_UIDS:Ljava/lang/String; = "uids"

.field public static final KEY_URL_MID:Ljava/lang/String; = "url_mid"

.field private static final MSG_RESULT_COMMENTSLIST:I = 0x3

.field private static final MSG_RESULT_COMMENTSLIST_ERROR:I = 0x4

.field private static final MSG_RESULT_PHOTO:I = 0x2

.field private static final MSG_RESULT_REPOSTLIST:I = 0x5

.field private static final MSG_RESULT_USER_HEAD_PIC:I = 0x6

.field private static final MSG_RESULT_USER_INFO:I = 0x1

.field public static final NULL_STRING:Ljava/lang/String; = ""

.field public static final REPOSR_FINIFHED:I = 0x9001

.field private static final SAFE_MSG_RESULT_COMMENTSLIST:I = 0x8

.field private static final SAFE_MSG_RESULT_REPOSTLIST:I = 0x9

.field private static final TAG:Ljava/lang/String; = "panhui4_SingleImageViewActivity2"

.field public static final UPDATE_COMM_NUMBER:I = 0x40001

.field public static UPDATE_LIST:Landroid/os/Handler; = null

.field public static final UPDATE_REPOST_NUMBER:I = 0x40000

.field public static final UPDATE_REPOST_NUMBER_STATUS_COUNT:I = 0x9003

.field protected static final UPDATE_UI:I = 0x20001

.field public static final VALUE_UID_DEFAULT:I = -0x1

.field private static commentsCount:Landroid/widget/TextView;

.field private static mCommentsItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mCommentsTotalNumber:I

.field private static mContext:Landroid/content/Context;

.field private static mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

.field private static mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

.field private static mRepostsArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mRepostsTotalNumber:I

.field public static mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

.field private static mWeiboID:J

.field private static repostsCount:Landroid/widget/TextView;

.field static response:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;


# instance fields
.field private btnPraise:Landroid/widget/ImageButton;

.field private comment_btn:Landroid/widget/ImageButton;

.field private isCheckAllReply:Z

.field private isGetCommenting:Z

.field private isGetReposting:Z

.field private isReplay:Z

.field protected loadMoreHandler:Landroid/os/Handler;

.field private loadingBtm:Landroid/widget/ImageView;

.field private mAccessTokenStr:Ljava/lang/String;

.field private mArrowButton:Landroid/widget/ImageButton;

.field private mAtButton:Landroid/widget/ImageButton;

.field private mBmpStatusCache:Landroid/graphics/Bitmap;

.field private mBottomLayout:Landroid/widget/RelativeLayout;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCommentContent:Landroid/widget/EditText;

.field private mCommentLayout:Landroid/widget/RelativeLayout;

.field private mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

.field private mDlgLoading:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHuatiButton:Landroid/widget/ImageButton;

.field private mIndex:I

.field private mIsAllDisplay:Z

.field private mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field private mLikeCounterTV:Landroid/widget/TextView;

.field private mLoadMore:Z

.field private final mLockDlg:[B

.field private mPage:I

.field private mReplyLayout:Landroid/widget/TabWidget;

.field private mRepostLayout:Landroid/widget/TabWidget;

.field private mSimleButton:Landroid/widget/ImageButton;

.field private mSize:I

.field private mSmileGV:Landroid/widget/GridView;

.field private mTopGallery:Landroid/widget/GridView;

.field private mTopGalleryAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

.field private mUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlMidPic:Ljava/lang/String;

.field private mWbEmptyView:Landroid/widget/LinearLayout;

.field private mWbFooterView:Landroid/widget/RelativeLayout;

.field private mWbHeaderView:Landroid/widget/LinearLayout;

.field private matchWidthImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

.field private repost_btn:Landroid/widget/ImageButton;

.field private return_btn:Landroid/widget/ImageButton;

.field private select_id:I

.field private updatePg:Landroid/widget/ProgressBar;

.field updateUIHandler:Landroid/os/Handler;

.field private weibo_wdy_action_button:Landroid/widget/Button;

.field private weibo_wdy_message_tv:Landroid/widget/TextView;

.field private weibo_wdy_smile_layout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    .line 2640
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$12;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$12;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->UPDATE_LIST:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;-><init>()V

    .line 141
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    .line 164
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    .line 165
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isReplay:Z

    .line 221
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    .line 225
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mDlgLoading:Landroid/app/ProgressDialog;

    .line 226
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mLockDlg:[B

    .line 228
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUrlMidPic:Ljava/lang/String;

    .line 234
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCheckAllReply:Z

    .line 508
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updateUIHandler:Landroid/os/Handler;

    .line 875
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;

    .line 1801
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$8;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$8;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadMoreHandler:Landroid/os/Handler;

    .line 2579
    return-void
.end method

.method private static UpdateList(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 4
    .param p0, "mItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 2752
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v0

    sget-wide v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2758
    :goto_0
    return-void

    .line 2755
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2757
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCheckAllReply:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setWeiboInf(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->matchWidthImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->clearItemPic(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updatePg:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCommentsCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadData()V

    return-void
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadMore()V

    return-void
.end method

.method static synthetic access$2502(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isReplay:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsTotalNumber:I

    return v0
.end method

.method static synthetic access$2802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 113
    sput p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsTotalNumber:I

    return p0
.end method

.method static synthetic access$2900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    .prologue
    .line 113
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    return v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->UpdateList(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    return-void
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->jumpToShowBigPicPage(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    return-void
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->repostsCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 113
    sget-wide v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    return-wide v0
.end method

.method static synthetic access$800()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->commentsCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 113
    sput p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I

    return p0
.end method

.method private clearAndUpdate()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 2314
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2315
    const-string/jumbo v2, "panhui4_SingleImageViewActivity2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update, mUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updatePg:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updateProgressBar(Landroid/widget/ProgressBar;)V

    .line 2319
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isUpdate:Z

    .line 2321
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCommentPage:Z

    if-eqz v2, :cond_1

    .line 2322
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    if-nez v2, :cond_0

    .line 2323
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    .line 2324
    invoke-direct {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCommentsUrl(J)Ljava/lang/String;

    move-result-object v0

    .line 2325
    .local v0, "sCommentsUrl":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_COMMENTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v0, p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 2336
    .end local v0    # "sCommentsUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2328
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    if-nez v2, :cond_0

    .line 2329
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    .line 2330
    invoke-direct {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getRepostsUrl(J)Ljava/lang/String;

    move-result-object v1

    .line 2331
    .local v1, "sRepostsUrl":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_REPOSTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v1, p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private clearItemPic(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 1885
    .local p1, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    if-nez p1, :cond_0

    .line 1896
    :goto_0
    return-void

    .line 1887
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1888
    .local v5, "size":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 1889
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 1890
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1891
    .local v2, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v4

    .line 1892
    .local v4, "sUrl":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v3

    .line 1893
    .local v3, "sName":Ljava/lang/String;
    invoke-virtual {v0, v4, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearUserHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1895
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v3    # "sName":Ljava/lang/String;
    .end local v4    # "sUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private comment()V
    .locals 4

    .prologue
    .line 2370
    const-string/jumbo v0, "panhui4_SingleImageViewActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comment, mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    sget-wide v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->configueIntentComment(J)V

    .line 2377
    return-void
.end method

.method private configueIntentComment(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 2380
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2381
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/CommentsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2382
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2384
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startActivity(Landroid/content/Intent;)V

    .line 2385
    return-void
.end method

.method private configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraKey1"    # Ljava/lang/String;
    .param p3, "extraValue1"    # J
    .param p5, "extraKey2"    # Ljava/lang/String;
    .param p6, "extraValue2"    # J
    .param p8, "questMode"    # Ljava/lang/String;

    .prologue
    .line 2456
    const/4 v6, 0x0

    .line 2457
    .local v6, "result":Ljava/lang/String;
    new-instance v5, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v5}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 2458
    .local v5, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mAccessTokenStr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2459
    const-string v7, "access_token"

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2463
    invoke-virtual {v5, p2, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 2466
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2467
    move-wide/from16 v0, p6

    invoke-virtual {v5, p5, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 2471
    :cond_2
    :try_start_0
    move-object/from16 v0, p8

    invoke-static {p0, p1, v0, v5}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 2486
    :goto_0
    return-object v6

    .line 2473
    :catch_0
    move-exception v4

    .line 2474
    .local v4, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v4}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    goto :goto_0

    .line 2476
    .end local v4    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v3

    .line 2477
    .local v3, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 2478
    const-string/jumbo v7, "panhui4_SingleImageViewActivity2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configueOpenUrl, UnknownHostException="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2482
    .end local v3    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v2

    .line 2483
    .local v2, "eio":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private copyItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 3
    .param p1, "srcItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p2, "dstItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 1204
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrUserId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 1211
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRepostsCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRepostsCount(I)V

    .line 1217
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 1219
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmAttitudesCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmAttitudesCount(I)V

    .line 1223
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->ismIsTweeted()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmIsTweeted(Z)V

    .line 1231
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicOriginal(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicMid(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicThumbnail(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRetweetedUserUid()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRetweetedUserUid(J)V

    .line 1240
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRetweetedStatusUid()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRetweetedStatusUid(J)V

    .line 1244
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrCreatedTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 1250
    const-string/jumbo v0, "wangdiyuan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "6    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setPicList(Ljava/util/List;)V

    .line 1255
    return-void
.end method

.method private getCommentsCount()I
    .locals 1

    .prologue
    .line 1835
    sget v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I

    return v0
.end method

.method private getCommentsUrl(J)Ljava/lang/String;
    .locals 7
    .param p1, "last_commentid"    # J

    .prologue
    .line 1168
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 1169
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v2, "access_token"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v2, "id"

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 1171
    const-string v2, "count"

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 1172
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1173
    const-string/jumbo v2, "max_id"

    invoke-virtual {v0, v2, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 1178
    :goto_0
    const-string v1, "https://api.weibo.com/2/comments/show.json"

    .line 1180
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    return-object v1

    .line 1175
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "max_id"

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private getCurrentCount()I
    .locals 2

    .prologue
    .line 1843
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1844
    const/4 v0, 0x0

    .line 1849
    :goto_0
    return v0

    .line 1847
    :cond_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1849
    .local v0, "count":I
    goto :goto_0
.end method

.method private getFriendStatusUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1158
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 1159
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v2, "access_token"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v2, "id"

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 1161
    const-string v1, "https://api.weibo.com/2/statuses/show.json"

    .line 1162
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    return-object v1
.end method

.method private getIntentExtras()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 1853
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1855
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "url_mid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUrlMidPic:Ljava/lang/String;

    .line 1856
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    .line 1857
    const-string/jumbo v2, "select_id"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    .line 1859
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGalleryAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    .line 1861
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "check_all_reply"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCheckAllReply:Z

    .line 1863
    const-string/jumbo v2, "uids"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUids:Ljava/util/ArrayList;

    .line 1864
    sget-wide v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 1865
    const/4 v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSize:I

    .line 1870
    :cond_0
    :goto_0
    const-string v2, "index"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    .line 1871
    const-string/jumbo v2, "panhui4_SingleImageViewActivity2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUids="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    .line 1874
    .local v0, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mAccessTokenStr:Ljava/lang/String;

    .line 1875
    return-void

    .line 1866
    .end local v0    # "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUids:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1867
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSize:I

    goto :goto_0
.end method

.method private getIntentForRepost(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # J
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 2388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2389
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/RepostWeiboActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2390
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2391
    const-string v1, "content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2392
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2393
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startActivity(Landroid/content/Intent;)V

    .line 2394
    return-void
.end method

.method private getRepostsUrl(J)Ljava/lang/String;
    .locals 7
    .param p1, "last_repostId"    # J

    .prologue
    .line 1185
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 1186
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v2, "access_token"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v2, "id"

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 1188
    const-string v2, "count"

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 1189
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1190
    const-string/jumbo v2, "max_id"

    invoke-virtual {v0, v2, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 1195
    :goto_0
    const-string v1, "https://api.weibo.com/2/statuses/repost_timeline.json"

    .line 1197
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1198
    return-object v1

    .line 1192
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "max_id"

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private hideWait()V
    .locals 6

    .prologue
    .line 297
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mLockDlg:[B

    monitor-enter v2

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mDlgLoading:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mDlgLoading:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 302
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mDlgLoading:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 308
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "hideWait error in single wb: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initViews()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 1560
    const v8, 0x7f100a5a

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updatePg:Landroid/widget/ProgressBar;

    .line 1562
    const v8, 0x7f100834

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSimleButton:Landroid/widget/ImageButton;

    .line 1563
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSimleButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1565
    const v8, 0x7f100835

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mAtButton:Landroid/widget/ImageButton;

    .line 1566
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mAtButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1568
    const v8, 0x7f100833

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHuatiButton:Landroid/widget/ImageButton;

    .line 1569
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHuatiButton:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1571
    const v8, 0x7f10082e

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSmileGV:Landroid/widget/GridView;

    .line 1573
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSmileGV:Landroid/widget/GridView;

    new-instance v9, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SmileAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1575
    const v8, 0x7f100ac8

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->btnPraise:Landroid/widget/ImageButton;

    .line 1577
    const v8, 0x7f100a56

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->weibo_wdy_message_tv:Landroid/widget/TextView;

    .line 1578
    const v8, 0x7f100830

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCheckBox:Landroid/widget/CheckBox;

    .line 1580
    const v8, 0x7f10082d

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->weibo_wdy_smile_layout:Landroid/widget/RelativeLayout;

    .line 1582
    const v8, 0x7f100a54

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentLayout:Landroid/widget/RelativeLayout;

    .line 1583
    const v8, 0x7f100a53

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBottomLayout:Landroid/widget/RelativeLayout;

    .line 1584
    const v8, 0x7f100a58

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    .line 1586
    const v8, 0x7f100ad2

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 1587
    .local v6, "update_btn":Landroid/widget/ImageButton;
    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1589
    const v8, 0x7f100ac7

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->repost_btn:Landroid/widget/ImageButton;

    .line 1590
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->repost_btn:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1592
    const v8, 0x7f100a57

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->weibo_wdy_action_button:Landroid/widget/Button;

    .line 1593
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->weibo_wdy_action_button:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1595
    const v8, 0x7f1009f8

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->comment_btn:Landroid/widget/ImageButton;

    .line 1596
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->comment_btn:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1598
    const v8, 0x7f100a2b

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->return_btn:Landroid/widget/ImageButton;

    .line 1599
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->return_btn:Landroid/widget/ImageButton;

    invoke-virtual {v8, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1601
    const v8, 0x7f100ac9

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 1602
    .local v5, "save_btn":Landroid/widget/ImageButton;
    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1604
    const v8, 0x7f1009f6

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    .line 1605
    new-instance v8, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    invoke-direct {v8, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    .line 1607
    const v8, 0x7f100a1b

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbEmptyView:Landroid/widget/LinearLayout;

    .line 1608
    const v8, 0x7f0f064d

    invoke-direct {p0, p0, v8, v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V

    .line 1610
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1611
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f0401ad

    invoke-virtual {v2, v8, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    .line 1612
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    invoke-static {v8}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 1614
    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCheckAllReply:Z

    if-nez v8, :cond_1

    .line 1615
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9, v12, v10}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1627
    :goto_0
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    new-instance v9, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$6;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1697
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a44

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mLikeCounterTV:Landroid/widget/TextView;

    .line 1699
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a4b

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sput-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->repostsCount:Landroid/widget/TextView;

    .line 1701
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a4e

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sput-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->commentsCount:Landroid/widget/TextView;

    .line 1703
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a4c

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TabWidget;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyLayout:Landroid/widget/TabWidget;

    .line 1704
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyLayout:Landroid/widget/TabWidget;

    invoke-virtual {v8, p0}, Landroid/widget/TabWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1706
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyLayout:Landroid/widget/TabWidget;

    invoke-virtual {v8, v13}, Landroid/widget/TabWidget;->setSelected(Z)V

    .line 1708
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a49

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TabWidget;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostLayout:Landroid/widget/TabWidget;

    .line 1709
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostLayout:Landroid/widget/TabWidget;

    invoke-virtual {v8, p0}, Landroid/widget/TabWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1711
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a41

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->matchWidthImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    .line 1713
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a3d

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mArrowButton:Landroid/widget/ImageButton;

    .line 1720
    const v8, 0x7f0401c3

    invoke-virtual {v2, v8, v12, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbFooterView:Landroid/widget/RelativeLayout;

    .line 1721
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbFooterView:Landroid/widget/RelativeLayout;

    const v9, 0x7f100ad6

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    .line 1722
    iput-boolean v13, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIsAllDisplay:Z

    .line 1763
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v9, v12, v10}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1765
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a45

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1766
    .local v4, "pre_btn":Landroid/widget/ImageView;
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1768
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a46

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1769
    .local v3, "next_btn":Landroid/widget/ImageView;
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1771
    iget v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSize:I

    if-gt v8, v13, :cond_0

    .line 1772
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1773
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1776
    :cond_0
    return-void

    .line 1617
    .end local v3    # "next_btn":Landroid/widget/ImageView;
    .end local v4    # "pre_btn":Landroid/widget/ImageView;
    :cond_1
    const v8, 0x7f100ad3

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1618
    .local v0, "allComment":Landroid/widget/TextView;
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1620
    const v8, 0x7f100ac6

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1621
    .local v7, "weibo_wdy_bottom_action_ll":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1623
    const v8, 0x7f100a31

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1624
    .local v1, "imgHead":Landroid/widget/ImageView;
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private isAllDisplay()Z
    .locals 3

    .prologue
    .line 1829
    const-string/jumbo v0, "panhui4_SingleImageViewActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllDisplay, comments all size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCommentsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCurrentCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsAllDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIsAllDisplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCommentsCount()I

    move-result v0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCurrentCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIsAllDisplay:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jumpToShowBigPicPage(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 6
    .param p1, "iDataItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 798
    move-object v0, p1

    .line 799
    .local v0, "mDataItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 800
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "image_name"

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string v3, "data_item"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 802
    const-string/jumbo v3, "selected_id"

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 804
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v2

    .line 806
    .local v2, "mPicInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 807
    :cond_0
    const-string v3, "image_url"

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startActivity(Landroid/content/Intent;)V

    .line 815
    return-void

    .line 810
    :cond_1
    const-string v4, "all_image_urls"

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 811
    const-string v4, "image_url"

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private loadData()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 333
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updateWBDisplayType()V

    .line 335
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v8

    sget-wide v12, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v8, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getStatusCacheData(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;

    .line 337
    .local v5, "picData":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    const-string/jumbo v11, "wangdiyuan_debug_\u91cd\u590d"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadData() picData == null ? "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v5, :cond_3

    move v8, v9

    :goto_0
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-eqz v5, :cond_7

    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "bWait":Z
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v8

    sget-wide v12, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v8, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheDataItem(J)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v2

    .line 342
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-eqz v2, :cond_0

    .line 343
    new-instance v8, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    iput-object v8, v5, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->headInfo:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 344
    iget-object v8, v5, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->headInfo:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {p0, v2, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->copyItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 346
    :cond_0
    iget-object v8, v5, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->headInfo:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 347
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    if-eqz v8, :cond_4

    .line 348
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {p0, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->sendMassage(ILjava/lang/Object;)V

    .line 357
    :goto_1
    iget-object v8, v5, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->commentList:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 358
    iget-object v8, v5, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->commentList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    sput-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    .line 359
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    sget-object v9, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 361
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    sget-object v9, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    .line 367
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 368
    const v8, 0x7f0f0721

    invoke-direct {p0, p0, v8, v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setEmptyView(Landroid/content/Context;IZ)V

    .line 373
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    new-instance v9, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 395
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideLoadingMoreAnim(Landroid/view/View;)V

    .line 479
    .end local v0    # "bWait":Z
    :cond_2
    :goto_2
    return-void

    .end local v2    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_3
    move v8, v10

    .line 337
    goto :goto_0

    .line 350
    .restart local v0    # "bWait":Z
    .restart local v2    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_4
    new-instance v8, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 352
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getFriendStatusUrl()Ljava/lang/String;

    move-result-object v7

    .line 353
    .local v7, "sFriendsUrl":Ljava/lang/String;
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_TEXT:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v7, p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 355
    const/4 v0, 0x1

    goto :goto_1

    .line 397
    .end local v7    # "sFriendsUrl":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 399
    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    if-nez v8, :cond_6

    .line 400
    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    .line 401
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getComment_last_id()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCommentsUrl(J)Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "sCommentsUrl":Ljava/lang/String;
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_COMMENTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v6, p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 404
    .end local v6    # "sCommentsUrl":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 411
    .end local v0    # "bWait":Z
    .end local v2    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_7
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v8

    sget-wide v12, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v8, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheDataItem(J)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v2

    .line 413
    .restart local v2    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    const-string/jumbo v8, "wangdiyuan_debug_\u91cd\u590d"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dataCache == null ? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v2, :cond_8

    move v10, v9

    :cond_8
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-eqz v2, :cond_d

    .line 416
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-direct {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;-><init>()V

    .line 417
    .local v4, "mWeiboPicURL":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 419
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->setAllURLFromMiddleUrl(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicOriginal(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicThumbnail(Ljava/lang/String;)V

    .line 439
    :cond_9
    :goto_3
    new-instance v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 440
    .local v3, "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->copyItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 441
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;)V

    .line 442
    .local v1, "data":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    iput-object v3, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->headInfo:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 443
    new-instance v8, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 444
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {p0, v2, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->copyItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 445
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v8

    sget-wide v10, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v8, v10, v11, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putStatusCacheData(JLjava/lang/Object;)V

    .line 446
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {p0, v9, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->sendMassage(ILjava/lang/Object;)V

    .line 471
    .end local v1    # "data":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    .end local v3    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "mWeiboPicURL":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    :cond_a
    :goto_4
    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    if-nez v8, :cond_2

    .line 472
    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    .line 474
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showLoadingMoreAnim(Landroid/view/View;)V

    .line 476
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getComment_last_id()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCommentsUrl(J)Ljava/lang/String;

    move-result-object v6

    .line 477
    .restart local v6    # "sCommentsUrl":Ljava/lang/String;
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_COMMENTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v6, p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 424
    .end local v6    # "sCommentsUrl":Ljava/lang/String;
    .restart local v4    # "mWeiboPicURL":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    :cond_b
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 426
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->setAllURLFromLargeUrl(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicMid(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicThumbnail(Ljava/lang/String;)V

    goto :goto_3

    .line 431
    :cond_c
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 433
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->setAllURLFromThumbNailUrl(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicOriginal(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicMid(Ljava/lang/String;)V

    goto :goto_3

    .line 451
    .end local v4    # "mWeiboPicURL":Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;
    :cond_d
    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCheckAllReply:Z

    if-nez v8, :cond_a

    .line 453
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showLoadingMoreAnim(Landroid/view/View;)V

    .line 455
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getFriendStatusUrl()Ljava/lang/String;

    move-result-object v7

    .line 456
    .restart local v7    # "sFriendsUrl":Ljava/lang/String;
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_TEXT:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v7, p0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private loadFriendsStatuses(ZJ)V
    .locals 18
    .param p1, "sendMsg"    # Z
    .param p2, "uid"    # J

    .prologue
    .line 1487
    const-string v3, "https://api.weibo.com/2/statuses/show.json"

    const-string v4, "id"

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-string v10, "GET"

    move-object/from16 v2, p0

    move-wide/from16 v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1490
    .local v15, "result":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    .line 1498
    .local v12, "gson":Lcom/google/gson/Gson;
    const/4 v14, 0x0

    .line 1500
    .local v14, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;
    :try_start_0
    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;

    invoke-virtual {v12, v15, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;

    move-object v14, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    :goto_1
    if-eqz v14, :cond_0

    .line 1512
    iget-object v0, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-object/from16 v17, v0

    .line 1513
    .local v17, "users":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    if-eqz v17, :cond_2

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 1522
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v3, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget v3, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->reposts_count:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRepostsCount(I)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget v3, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->comments_count:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget v3, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->attitudes_count:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmAttitudesCount(I)V

    .line 1528
    iget-object v2, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    .line 1529
    .local v13, "isRetweeted":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v2, v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmIsTweeted(Z)V

    .line 1530
    iget-object v2, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->original_pic:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v3, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->original_pic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicOriginal(Ljava/lang/String;)V

    .line 1538
    :cond_3
    :goto_3
    if-eqz v13, :cond_4

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v3, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRetweetedUserUid(J)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v3, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRetweetedStatusUid(J)V

    .line 1544
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v3, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->created_at:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 1547
    iget-object v2, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->source:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->parseSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1548
    .local v16, "source":Ljava/lang/String;
    const-string/jumbo v2, "wangdiyuan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 1551
    if-eqz p1, :cond_0

    .line 1552
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->sendMassage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1501
    .end local v13    # "isRetweeted":Z
    .end local v16    # "source":Ljava/lang/String;
    .end local v17    # "users":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :catch_0
    move-exception v11

    .line 1502
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1528
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v17    # "users":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1533
    .restart local v13    # "isRetweeted":Z
    :cond_6
    if-eqz v13, :cond_3

    .line 1534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v3, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getOriginal_pic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicOriginal(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private loadMore()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2339
    const-string/jumbo v2, "panhui4_SingleImageViewActivity2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update, mUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isCommentPage:Z

    if-eqz v2, :cond_1

    .line 2342
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    if-nez v2, :cond_0

    .line 2344
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    .line 2345
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getComment_last_id()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getCommentsUrl(J)Ljava/lang/String;

    move-result-object v0

    .line 2346
    .local v0, "sCommentsUrl":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_COMMENTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v0, p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 2356
    .end local v0    # "sCommentsUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2349
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    if-nez v2, :cond_0

    .line 2350
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    .line 2351
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getRepost_past_id()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getRepostsUrl(J)Ljava/lang/String;

    move-result-object v1

    .line 2352
    .local v1, "sRepostsUrl":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_REPOSTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v1, p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private next()V
    .locals 4

    .prologue
    .line 2286
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    .line 2287
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSize:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 2288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setCurrentIndex(I)V

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUids:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    .line 2293
    const-string/jumbo v0, "panhui4_SingleImageViewActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "next, mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadData()V

    .line 2295
    return-void
.end method

.method private onGetCommentDone(Ljava/lang/String;)V
    .locals 7
    .param p1, "sJsonData"    # Ljava/lang/String;

    .prologue
    .line 1326
    const-string/jumbo v5, "wangdiyuan_debug_\u91cd\u590d"

    const-string/jumbo v6, "onGetCommentDone()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 1329
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v4, 0x0

    .line 1331
    .local v4, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;
    :try_start_0
    const-class v5, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;

    invoke-virtual {v3, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    if-nez v4, :cond_0

    .line 1351
    :goto_1
    return-void

    .line 1332
    :catch_0
    move-exception v2

    .line 1333
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1344
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, v4, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;->comments:Ljava/util/List;

    .line 1346
    .local v1, "commentsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentInfo;>;"
    iget v5, v4, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/CommentObject;->total_number:I

    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setCommentsCount(I)V

    .line 1348
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;

    const v6, 0x40001

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1349
    const/16 v5, 0x8

    invoke-virtual {p0, v5, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->sendMessageVithDate(ILjava/util/List;)V

    goto :goto_1
.end method

.method private onGetRepostDone(Ljava/lang/String;)V
    .locals 11
    .param p1, "sJsonData"    # Ljava/lang/String;

    .prologue
    const/high16 v10, 0x40000

    .line 1356
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 1357
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v6, 0x0

    .line 1359
    .local v6, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostObject;
    :try_start_0
    const-class v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostObject;

    invoke-virtual {v3, p1, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostObject;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    :goto_0
    if-nez v6, :cond_0

    .line 1429
    :goto_1
    return-void

    .line 1360
    :catch_0
    move-exception v2

    .line 1361
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-DD-HH-mm-ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1362
    .local v4, "mFormat":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1363
    .local v1, "date_time":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wb_LMImage_json_ex_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->writeCacheData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/Boolean;

    .line 1364
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1370
    .end local v1    # "date_time":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "mFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    sget-object v7, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 1371
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;

    .line 1374
    :cond_1
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isUpdate:Z

    if-eqz v7, :cond_2

    .line 1375
    sget-object v7, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->clearItemPic(Ljava/util/ArrayList;)V

    .line 1376
    sget-object v7, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1377
    const-string/jumbo v7, "update done"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "repost size is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isUpdate:Z

    .line 1379
    iget v7, v6, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostObject;->total_number:I

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setmRepostsTotalNumber(I)V

    .line 1382
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1391
    :cond_2
    iget v7, v6, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostObject;->total_number:I

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setmRepostsTotalNumber(I)V

    .line 1393
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1394
    iget-object v5, v6, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostObject;->reposts:Ljava/util/List;

    .line 1396
    .local v5, "repostsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;>;"
    const/16 v7, 0x9

    invoke-virtual {p0, v7, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->sendMessageVithDate(ILjava/util/List;)V

    goto/16 :goto_1
.end method

.method private onGetStatusDone(Ljava/lang/String;)V
    .locals 14
    .param p1, "sJsonData"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 1259
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 1260
    .local v4, "gson":Lcom/google/gson/Gson;
    const/4 v7, 0x0

    .line 1262
    .local v7, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;
    :try_start_0
    const-class v10, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;

    invoke-virtual {v4, p1, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    :goto_0
    if-nez v7, :cond_0

    .line 1322
    :goto_1
    return-void

    .line 1263
    :catch_0
    move-exception v3

    .line 1264
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1269
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    if-nez v10, :cond_1

    .line 1270
    new-instance v10, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1272
    :cond_1
    iget-object v9, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .line 1273
    .local v9, "users":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    if-eqz v9, :cond_2

    .line 1275
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 1277
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getProfile_image_url()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 1279
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 1282
    :cond_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->text:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 1283
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->reposts_count:I

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRepostsCount(I)V

    .line 1284
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->comments_count:I

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 1285
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->attitudes_count:I

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmAttitudesCount(I)V

    .line 1287
    iget-object v10, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    if-eqz v10, :cond_5

    move v5, v11

    .line 1288
    .local v5, "isRetweeted":Z
    :goto_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v10, v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmIsTweeted(Z)V

    .line 1289
    iget-object v10, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->original_pic:Ljava/lang/String;

    if-eqz v10, :cond_6

    .line 1290
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->original_pic:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicOriginal(Ljava/lang/String;)V

    .line 1296
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 1297
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRetweetedUserUid(J)V

    .line 1298
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRetweetedStatusUid(J)V

    .line 1302
    :cond_4
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->created_at:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 1304
    iget-object v10, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->source:Ljava/lang/String;

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->parseSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1305
    .local v8, "source":Ljava/lang/String;
    const-string/jumbo v10, "wangdiyuan"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "1   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v10, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 1308
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->pic_urls:Ljava/util/List;

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setPicList(Ljava/util/List;)V

    .line 1310
    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 1311
    .local v6, "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {p0, v10, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->copyItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 1312
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v10

    sget-wide v12, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v10, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getStatusCacheData(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;

    .line 1313
    .local v2, "data":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    if-nez v2, :cond_7

    .line 1314
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;

    .end local v2    # "data":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    const/4 v10, 0x0

    invoke-direct {v2, p0, v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;)V

    .line 1315
    .restart local v2    # "data":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    iput-object v6, v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->headInfo:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1316
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v10

    sget-wide v12, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v10, v12, v13, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putStatusCacheData(JLjava/lang/Object;)V

    .line 1321
    :goto_4
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {p0, v11, v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->sendMassage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1287
    .end local v2    # "data":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    .end local v5    # "isRetweeted":Z
    .end local v6    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v8    # "source":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1292
    .restart local v5    # "isRetweeted":Z
    :cond_6
    if-eqz v5, :cond_3

    .line 1293
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;->retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getOriginal_pic()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicOriginal(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1318
    .restart local v2    # "data":Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;
    .restart local v6    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v8    # "source":Ljava/lang/String;
    :cond_7
    iput-object v6, v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$SinglePicData;->headInfo:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    goto :goto_4
.end method

.method public static openUrl(Ljava/lang/String;J)Ljava/lang/String;
    .locals 19
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weibo/sdk/android/WeiboException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2610
    sget-object v14, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mContext:Landroid/content/Context;

    sput-object v14, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mContext:Landroid/content/Context;

    .line 2611
    const-string v11, ""

    .line 2612
    .local v11, "result":Ljava/lang/String;
    const v2, 0xc350

    .line 2613
    .local v2, "SET_CONNECTION_TIMEOUT":I
    const v3, 0x30d40

    .line 2614
    .local v3, "SET_SOCKET_TIMEOUT":I
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 2615
    .local v7, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    invoke-static {v7, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2616
    invoke-static {v7, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 2617
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 2619
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    sget-object v14, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v4

    .line 2620
    .local v4, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v4}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v8

    .line 2622
    .local v8, "mAccessTokenStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2623
    .local v9, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?access_token="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&ids="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2624
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2625
    .local v6, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object v9, v6

    .line 2626
    invoke-interface {v5, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 2627
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    .line 2628
    .local v12, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 2629
    .local v13, "statusCode":I
    const/16 v14, 0xc8

    if-eq v13, v14, :cond_0

    .line 2630
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 2631
    new-instance v14, Lcom/weibo/sdk/android/WeiboException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Lcom/weibo/sdk/android/WeiboException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 2634
    :cond_0
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->read(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 2635
    return-object v11
.end method

.method private preview()V
    .locals 4

    .prologue
    .line 2298
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    .line 2299
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    if-gez v0, :cond_0

    .line 2300
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSize:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setCurrentIndex(I)V

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUids:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    .line 2305
    const-string/jumbo v0, "panhui4_SingleImageViewActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preview, mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadData()V

    .line 2307
    return-void
.end method

.method private repost()V
    .locals 4

    .prologue
    .line 2359
    const-string/jumbo v0, "panhui4_SingleImageViewActivity2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "repost, mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    sget-wide v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getIntentForRepost(JLjava/lang/String;Ljava/lang/String;)V

    .line 2367
    return-void
.end method

.method private save()V
    .locals 2

    .prologue
    .line 2397
    const-string/jumbo v0, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v1, "save"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$11;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2453
    return-void
.end method

.method private sendMassage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 504
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    return-void
.end method

.method private setCommentsCount(I)V
    .locals 0
    .param p1, "mCommTotalNumber"    # I

    .prologue
    .line 1839
    sput p1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsTotalNumber:I

    .line 1840
    return-void
.end method

.method private setEmptyView(Landroid/content/Context;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "isShowBtn"    # Z

    .prologue
    .line 1779
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbEmptyView:Landroid/widget/LinearLayout;

    const v3, 0x7f100a1c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1780
    .local v1, "emptytext":Landroid/widget/TextView;
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 1781
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1784
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbEmptyView:Landroid/widget/LinearLayout;

    const v3, 0x7f100a1e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1785
    .local v0, "emptybtn":Landroid/widget/Button;
    if-eqz p3, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1786
    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1787
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$7;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1799
    :cond_1
    return-void

    .line 1785
    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private setWeiboInf(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 34
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 545
    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setDEFAULT_PIC_MOD(I)V

    .line 552
    const v8, 0x7f100a3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGallery:Landroid/widget/GridView;

    .line 553
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGalleryAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->matchWidthImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->setmDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGallery:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGalleryAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGalleryAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_0

    .line 557
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mArrowButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startFlashArrow(Landroid/view/View;)V

    .line 560
    :cond_0
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 561
    .local v15, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 562
    iget v8, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v8, v8

    const-wide v32, 0x4014cccccccccccdL    # 5.2

    div-double v8, v8, v32

    double-to-int v0, v8

    move/from16 v23, v0

    .line 564
    .local v23, "menuWidth":I
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGalleryAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->getCount()I

    move-result v8

    mul-int v8, v8, v23

    const/4 v9, -0x2

    move-object/from16 v0, v24

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 567
    .local v24, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGallery:Landroid/widget/GridView;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGallery:Landroid/widget/GridView;

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 569
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGallery:Landroid/widget/GridView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGallery:Landroid/widget/GridView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 571
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGallery:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGalleryAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGalleryAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    new-instance v9, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$3;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->setOnTopGalleryClickListener(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;)V

    .line 616
    const-string v25, ""

    .line 617
    .local v25, "picurl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg()Z

    move-result v8

    if-nez v8, :cond_5

    .line 619
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getDEFAULT_PIC_MOD()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v25

    .line 638
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v26

    .line 639
    .local v26, "sName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v8

    const/16 v9, 0x2d0

    const/16 v10, 0x2d0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1, v9, v10}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 640
    .local v12, "bmpStatus":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_8

    .line 642
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->matchWidthImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    invoke-virtual {v8, v12}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 645
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 647
    :cond_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    .line 660
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a42

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    .line 661
    .local v17, "gridImg":Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 662
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setOnGridClickListener(Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid$OnClickGridImageListener;)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicNumber()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_9

    .line 665
    const/16 v8, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setVisibility(I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a3a

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/HorizontalScrollView;

    .line 672
    .local v21, "mScrollView":Landroid/widget/HorizontalScrollView;
    const/16 v8, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 673
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTopGallery:Landroid/widget/GridView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setVisibility(I)V

    .line 685
    .end local v21    # "mScrollView":Landroid/widget/HorizontalScrollView;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->ismIsTweeted()Z

    move-result v19

    .line 687
    .local v19, "isRetweeted":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100823

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 688
    .local v13, "content":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a4b

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sput-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->repostsCount:Landroid/widget/TextView;

    .line 692
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->repostsCount:Landroid/widget/TextView;

    const v9, 0x7f0f072f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v31, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRepostsCount()I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v10, v31

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRepostsCount()I

    move-result v8

    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setmRepostsTotalNumber(I)V

    .line 697
    const-string/jumbo v8, "wangdiyuan weibo get Attitude : "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmAttitudesCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a4e

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sput-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->commentsCount:Landroid/widget/TextView;

    .line 701
    sget-object v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->commentsCount:Landroid/widget/TextView;

    const v9, 0x7f0f0730

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v31, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v10, v31

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setCommentsCount(I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a48

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 706
    .local v28, "source":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 712
    .local v6, "lStart":J
    new-instance v16, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 713
    .local v16, "dt":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 714
    .local v4, "lEnd":J
    const-wide/32 v8, 0xea60

    const/high16 v10, 0x40000

    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v14

    .line 715
    .local v14, "dateValue":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a47

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 716
    .local v30, "tvUpdateTime":Landroid/widget/TextView;
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    const v8, 0x7f100ad4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 720
    .local v29, "tvName":Landroid/widget/TextView;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mLikeCounterTV:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmAttitudesCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v26

    invoke-virtual {v8, v9, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getUserHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 726
    .local v11, "bmp":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_a

    .line 728
    const v8, 0x7f100a31

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 729
    .local v18, "imgHead":Landroid/widget/ImageView;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 743
    .end local v18    # "imgHead":Landroid/widget/ImageView;
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a3e

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 744
    .local v20, "mRelativeLayout":Landroid/widget/RelativeLayout;
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 745
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 747
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->isSingleImg()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 748
    const/16 v8, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 751
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWbHeaderView:Landroid/widget/LinearLayout;

    const v9, 0x7f100a3f

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 752
    .local v22, "mTextView":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 754
    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 756
    move-object/from16 v27, v25

    .line 775
    .local v27, "singleUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->matchWidthImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    new-instance v9, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    return-void

    .line 621
    .end local v4    # "lEnd":J
    .end local v6    # "lStart":J
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    .end local v12    # "bmpStatus":Landroid/graphics/Bitmap;
    .end local v13    # "content":Landroid/widget/TextView;
    .end local v14    # "dateValue":Ljava/lang/CharSequence;
    .end local v16    # "dt":Ljava/util/Date;
    .end local v17    # "gridImg":Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;
    .end local v19    # "isRetweeted":Z
    .end local v20    # "mRelativeLayout":Landroid/widget/RelativeLayout;
    .end local v22    # "mTextView":Landroid/widget/TextView;
    .end local v26    # "sName":Ljava/lang/String;
    .end local v27    # "singleUrl":Ljava/lang/String;
    .end local v28    # "source":Landroid/widget/TextView;
    .end local v29    # "tvName":Landroid/widget/TextView;
    .end local v30    # "tvUpdateTime":Landroid/widget/TextView;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getDEFAULT_PIC_MOD()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    .line 624
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->select_id:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    .line 628
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getDEFAULT_PIC_MOD()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 629
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    .line 630
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getDEFAULT_PIC_MOD()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 631
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    .line 633
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    .line 649
    .restart local v12    # "bmpStatus":Landroid/graphics/Bitmap;
    .restart local v26    # "sName":Ljava/lang/String;
    :cond_8
    new-instance v8, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetStatusPicListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v8, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusPic(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 657
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showWait()V

    goto/16 :goto_1

    .line 676
    .restart local v17    # "gridImg":Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;
    :cond_9
    const/16 v8, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setVisibility(I)V

    goto/16 :goto_2

    .line 732
    .restart local v4    # "lEnd":J
    .restart local v6    # "lStart":J
    .restart local v11    # "bmp":Landroid/graphics/Bitmap;
    .restart local v13    # "content":Landroid/widget/TextView;
    .restart local v14    # "dateValue":Ljava/lang/CharSequence;
    .restart local v16    # "dt":Ljava/util/Date;
    .restart local v19    # "isRetweeted":Z
    .restart local v28    # "source":Landroid/widget/TextView;
    .restart local v29    # "tvName":Landroid/widget/TextView;
    .restart local v30    # "tvUpdateTime":Landroid/widget/TextView;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetHeadPicListener;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$GetHeadPicListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$1;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusPic(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    goto/16 :goto_3
.end method

.method public static setmRepostsTotalNumber(I)V
    .locals 0
    .param p0, "mRepostsTotalNumber"    # I

    .prologue
    .line 279
    sput p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsTotalNumber:I

    .line 280
    return-void
.end method

.method private showComment()V
    .locals 2

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2260
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->notifyDataSetChanged()V

    .line 2261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$10;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2283
    return-void
.end method

.method private showRepost()V
    .locals 2

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2203
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->notifyDataSetChanged()V

    .line 2205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$9;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2251
    return-void
.end method

.method private showWait()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method private updateWBDisplayType()V
    .locals 3

    .prologue
    .line 483
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    .line 488
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    .line 496
    :goto_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 499
    const-string v0, "all_comment_count_1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 492
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->clearItemPic(Ljava/util/ArrayList;)V

    .line 493
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public getmRepostsTotalNumber()I
    .locals 1

    .prologue
    .line 275
    sget v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsTotalNumber:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 2771
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2772
    const/16 v1, 0x1001

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 2774
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2775
    .local v0, "commString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "sina_at_info"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2777
    const-string/jumbo v1, "wangdiyuan get_at_list"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "sina_at_info"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    .end local v0    # "commString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2778
    :cond_1
    const v1, 0x20001

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->return_btn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2161
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->return_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 2163
    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->onBackPressed()V

    .line 2164
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1900
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onclick, view id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2155
    :cond_0
    :goto_0
    return-void

    .line 1909
    :sswitch_0
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.weibo_wdy_reply_ll"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v3, "category_weibo_sina_singleimage"

    const-string v4, "action_weibo_sina_singleimage_click_commentlist_btn"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1914
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setCommentPage(Z)V

    .line 1916
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostLayout:Landroid/widget/TabWidget;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setSelected(Z)V

    .line 1917
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyLayout:Landroid/widget/TabWidget;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setSelected(Z)V

    .line 1919
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showComment()V

    .line 1921
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setSelection(I)V

    .line 1928
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->getDataItems()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1929
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    if-nez v1, :cond_0

    .line 1930
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    .line 1931
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideLoadingMoreAnim(Landroid/view/View;)V

    .line 1933
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showLoadingMoreAnim(Landroid/view/View;)V

    .line 1935
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getRepost_past_id()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getRepostsUrl(J)Ljava/lang/String;

    move-result-object v13

    .line 1936
    .local v13, "sRepostsUrl":Ljava/lang/String;
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_REPOSTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v13, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 1943
    .end local v13    # "sRepostsUrl":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.weibo_wdy_repost_ll"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v3, "category_weibo_sina_singleimage"

    const-string v4, "action_weibo_sina_singleimage_click_repostlist_btn"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1948
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setCommentPage(Z)V

    .line 1950
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostLayout:Landroid/widget/TabWidget;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setSelected(Z)V

    .line 1951
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyLayout:Landroid/widget/TabWidget;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setSelected(Z)V

    .line 1952
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showRepost()V

    .line 1953
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsListView:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/SafeListView;->setSelection(I)V

    .line 1955
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mReplyAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/CommentsListAdapter;->getDataItems()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1956
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    if-nez v1, :cond_0

    .line 1957
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    .line 1959
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideLoadingMoreAnim(Landroid/view/View;)V

    .line 1961
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->showLoadingMoreAnim(Landroid/view/View;)V

    .line 1963
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getRepost_past_id()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getRepostsUrl(J)Ljava/lang/String;

    move-result-object v13

    .line 1964
    .restart local v13    # "sRepostsUrl":Ljava/lang/String;
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->DONE_TYPE_STATUS_REPOSTS:Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    invoke-virtual {p0, v13, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getStatusTimeLine(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1972
    .end local v13    # "sRepostsUrl":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.wb_return"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v3, "category_weibo_sina_singleimage"

    const-string v4, "action_weibo_sina_singleimage_click_return_btn"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1977
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentsItem:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->clearItemPic(Ljava/util/ArrayList;)V

    .line 1978
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->clearItemPic(Ljava/util/ArrayList;)V

    .line 1980
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    if-eqz v1, :cond_1

    .line 1981
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearUserHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    :cond_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    if-eqz v1, :cond_2

    .line 1985
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->prepareImage()V

    .line 1988
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->finish()V

    goto/16 :goto_0

    .line 1992
    :sswitch_3
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.wb_save"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->save()V

    goto/16 :goto_0

    .line 1998
    :sswitch_4
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.update_btn"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v3, "category_weibo_sina_singleimage"

    const-string v4, "action_weibo_sina_singleimage_click_update_btn"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2003
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2006
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updatePg:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2007
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->clearAndUpdate()V

    goto/16 :goto_0

    .line 2012
    :sswitch_5
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.weibo_wdy_at_icon"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    new-instance v10, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    invoke-direct {v10, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2014
    .local v10, "getAtIntent":Landroid/content/Intent;
    const/16 v1, 0x1001

    invoke-virtual {p0, v10, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2020
    .end local v10    # "getAtIntent":Landroid/content/Intent;
    :sswitch_6
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.weibo_wdy_smile_icon"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSimleButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2023
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2024
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 2025
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mSimleButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2027
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->weibo_wdy_smile_layout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2028
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x12c

    invoke-direct {v12, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2029
    .local v12, "mLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    const v3, 0x7f100834

    invoke-virtual {v12, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2030
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2035
    .end local v12    # "mLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :sswitch_7
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.weibo_wdy_hua_ti_icon"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "##"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2038
    .local v9, "conetnt":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2039
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 2046
    .end local v9    # "conetnt":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.comment_btn"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v3, "category_weibo_sina_singleimage"

    const-string v4, "action_weibo_sina_singleimage_click_comment_btn"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2051
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isReplay:Z

    .line 2069
    new-instance v11, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v11, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2070
    .local v11, "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "weibo_uid"

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v11, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2071
    const-string/jumbo v1, "weibo_isreply"

    const/4 v3, 0x1

    invoke-virtual {v11, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2072
    invoke-virtual {p0, v11}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2079
    .end local v11    # "mIntent":Landroid/content/Intent;
    :sswitch_9
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.repost_btn"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v3, "category_weibo_sina_singleimage"

    const-string v4, "action_weibo_sina_singleimage_click_repost_btn"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2084
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isReplay:Z

    .line 2104
    new-instance v11, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;

    invoke-direct {v11, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2105
    .restart local v11    # "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "weibo_uid"

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    invoke-virtual {v11, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2106
    const-string/jumbo v1, "weibo_isreply"

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2107
    invoke-virtual {p0, v11}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2116
    .end local v11    # "mIntent":Landroid/content/Intent;
    :sswitch_a
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onclick, R.id.weibo_wdy_action_button"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isReplay:Z

    if-eqz v1, :cond_3

    .line 2119
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;

    sget-wide v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    const-wide/16 v4, -0x1

    const/16 v6, 0x100

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;-><init>(Landroid/app/Activity;JJI)V

    .line 2120
    .local v0, "mRepostUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2126
    .end local v0    # "mRepostUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBottomLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2127
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2129
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->weibo_wdy_action_button:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 2130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 2132
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->comment_btn:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto/16 :goto_0

    .line 2122
    :cond_3
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;

    sget-wide v4, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    const-wide/16 v6, -0x1

    const/16 v8, 0x101

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;-><init>(Landroid/app/Activity;JJI)V

    .line 2123
    .local v2, "mCommentUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mCommentContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 2138
    .end local v2    # "mCommentUtils":Lcom/lenovo/scg/gallery3d/weibo/util/CommentRepostUtils;
    :sswitch_b
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onClick, wb_preview"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->preview()V

    goto/16 :goto_0

    .line 2143
    :sswitch_c
    const-string/jumbo v1, "panhui4_SingleImageViewActivity2"

    const-string/jumbo v3, "onClick, wb_next"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->next()V

    goto/16 :goto_0

    .line 1902
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100833 -> :sswitch_7
        0x7f100834 -> :sswitch_6
        0x7f100835 -> :sswitch_5
        0x7f1009f8 -> :sswitch_8
        0x7f100a2b -> :sswitch_2
        0x7f100a45 -> :sswitch_b
        0x7f100a46 -> :sswitch_c
        0x7f100a49 -> :sswitch_1
        0x7f100a4c -> :sswitch_0
        0x7f100a4f -> :sswitch_3
        0x7f100a57 -> :sswitch_a
        0x7f100ac7 -> :sswitch_9
        0x7f100ad2 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 245
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 247
    const v0, 0x7f0401af

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->setContentView(I)V

    .line 249
    sput-object p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mContext:Landroid/content/Context;

    .line 251
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostsArr:Ljava/util/ArrayList;

    .line 255
    :cond_0
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initHelveticaTypeface(Landroid/content/Context;)V

    .line 256
    const v0, 0x7f100a51

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 258
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->getIntentExtras()V

    .line 260
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->initViews()V

    .line 262
    sget-wide v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUids:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mUids:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    .line 266
    :cond_1
    sget-wide v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mWeiboID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 267
    const-string/jumbo v0, "panhui4_SingleImageViewActivity2"

    const-string v1, "mUid = -1, no display status!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadData()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->onDestroy()V

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mBmpStatusCache:Landroid/graphics/Bitmap;

    .line 324
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    if-eqz v0, :cond_1

    .line 325
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mRepostAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/RepostsListAdapter;->realeaseCache()V

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->finish()V

    .line 329
    return-void
.end method

.method public onGridClick(Landroid/view/View;ILcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "dataItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 2170
    move-object v0, p3

    .line 2172
    .local v0, "mDataItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2173
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "image_name"

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2175
    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v2

    .line 2177
    .local v2, "mPicInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 2182
    :cond_0
    const-string v3, "image_url"

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicOriginal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2189
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->startActivity(Landroid/content/Intent;)V

    .line 2191
    return-void

    .line 2185
    :cond_1
    const-string v4, "all_image_urls"

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2186
    const-string v4, "image_url"

    invoke-virtual {p3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 2763
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity;->onPause()V

    .line 2764
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->stopTask()V

    .line 2765
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadingBtm:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideLoadingMoreAnim(Landroid/view/View;)V

    .line 2766
    return-void
.end method

.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1442
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->hideWait()V

    .line 1443
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->updatePg:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->stopProgressBar(Landroid/widget/ProgressBar;)V

    .line 1445
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->loadMoreHandler:Landroid/os/Handler;

    const v3, 0x10001

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object v0, p3

    .line 1447
    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;

    .line 1448
    .local v0, "doneType":Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;
    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_CANCELED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-ne p1, v2, :cond_0

    .line 1449
    const-string v2, "Task Canceled, objData = %s userContext =%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1484
    :goto_0
    return-void

    .line 1452
    :cond_0
    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_FAILED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-ne p1, v2, :cond_1

    .line 1453
    const-string v2, "Task failed, objData = %s userContext =%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1457
    :cond_1
    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2$13;->$SwitchMap$com$lenovo$scg$gallery3d$weibo$activities$AbstractWeiboDetailActivity$EnumTaskDoneType:[I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/AbstractWeiboDetailActivity$EnumTaskDoneType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1459
    :pswitch_0
    const-string/jumbo v2, "wangdiyuan_debug_\u91cd\u590d"

    const-string v3, "get Status Done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 1460
    check-cast v1, Ljava/lang/String;

    .line 1461
    .local v1, "sJsonData":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->onGetStatusDone(Ljava/lang/String;)V

    goto :goto_0

    .line 1466
    .end local v1    # "sJsonData":Ljava/lang/String;
    :pswitch_1
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetCommenting:Z

    move-object v1, p2

    .line 1468
    check-cast v1, Ljava/lang/String;

    .line 1469
    .restart local v1    # "sJsonData":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->onGetCommentDone(Ljava/lang/String;)V

    goto :goto_0

    .line 1474
    .end local v1    # "sJsonData":Ljava/lang/String;
    :pswitch_2
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->isGetReposting:Z

    move-object v1, p2

    .line 1476
    check-cast v1, Ljava/lang/String;

    .line 1477
    .restart local v1    # "sJsonData":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->onGetRepostDone(Ljava/lang/String;)V

    goto :goto_0

    .line 1457
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendMessageVithDate(ILjava/util/List;)V
    .locals 2
    .param p1, "what"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1432
    .local p2, "mList":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1433
    .local v0, "mMessage":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1434
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1436
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1437
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 2310
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mIndex:I

    .line 2311
    return-void
.end method
