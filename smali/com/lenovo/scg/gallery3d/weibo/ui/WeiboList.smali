.class public Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.super Ljava/lang/Object;
.source "WeiboList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$19;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;
    }
.end annotation


# static fields
.field private static final ATTITUDE_INDEX:I = 0x9

.field public static final CACHE_DEBUG:Z = false

.field private static final COMMENT_INDEX:I = 0xb

.field private static final CONTENT_INDEX:I = 0x4

.field private static final CONTENT_MAX_SIZE:I = 0x46

.field private static final ISRETWEETED_INDEX:I = 0x8

.field private static final MSG_END_SESSION:I = 0x2

.field private static final MSG_GET_RESULT_ACCOUNT:I = 0x6

.field private static final MSG_GET_RESULT_COUNTS:I = 0x7

.field private static final MSG_GET_RESULT_LOCAL_STATUSES:I = 0x9

.field private static final MSG_GET_RESULT_LOCAL_USERINFO:I = 0x8

.field private static final MSG_GET_RESULT_STATUSES:I = 0x1

.field private static final MSG_GET_RESULT_STATUSES_MORE_IMAGE:I = 0x3

.field private static final MSG_STATUSES_OPENURL_ERROR:I = 0x4

.field private static final MSG_STATUSES_SESSION_ERROR:I = 0x5

.field private static final NICKNAME_INDEX:I = 0x1

.field private static final NO_GONE_ID:I = 0x4d2

.field private static final PIC_INDEX:I = 0x5

.field public static final PIC_URLS_DIVIDER:Ljava/lang/String; = "_"

.field private static final PORTRAIT_INDEX:I = 0x2

.field private static final PROJECTION_TIME:[Ljava/lang/String;

.field private static final REPOST_INDEX:I = 0xa

.field public static final REQUST_CODE_MY_GALLERY_PICKED_MAIN:I = 0x1

.field public static final REQUST_CODE_PHOTOGRAPHER_PICKED_MAIN:I = 0x2

.field public static final REQUST_CODE_PHOTO_PICKED_WITH_DATA_MAIN:I = 0x0

.field public static final REQUST_CODE_POSTER_PICKED_MAIN:I = 0x3

.field private static final SOURCE_INDEX:I = 0x7

.field private static final STATE_LOADMORE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_UPDATING:I = 0x1

.field private static final SUID_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "panhui4_WeiboList"

.field private static final TIME_INDEX:I = 0x6

.field private static final UUID_INDEX:I


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field public mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private mAccessTokenStr:Ljava/lang/String;

.field private mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mChildViewOld:Landroid/view/View;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentStatusMaxId:J

.field private mErrorHandler:Landroid/os/Handler;

.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

.field private mGroupIndexCur:I

.field private mGroupMenuView:Landroid/view/ViewGroup;

.field private mGroupNameCur:Ljava/lang/String;

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

.field private mHandlerLoadMore:Landroid/os/Handler;

.field private mHandlerNotify:Landroid/os/Handler;

.field private mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

.field private mIsAllDisplay:Z

.field private mIsInsertToDb:Z

.field private mIsLoadGroupPicList:Z

.field private mIsUpdateToDb:Z

.field private mLockGroup:[B

.field private mLp:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLvWeiboGroup:Landroid/widget/ListView;

.field private mOnGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRunnableGetGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

.field private mRunnableLoadMore:Ljava/lang/Runnable;

.field private mRunnableRefresh:Ljava/lang/Runnable;

.field private mRunnableRefreshGroup:Ljava/lang/Runnable;

.field private mState:I

.field private mStatusesItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusesTotalNumber:I

.field private mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

.field private mTimeStatusesItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;

.field private mView:Landroid/view/ViewGroup;

.field private mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

.field private mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

.field private mWbEmptyView:Landroid/widget/LinearLayout;

.field private mWbFooterView:Landroid/widget/RelativeLayout;

.field private mWbFriendUid:J

.field private mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

.field private mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

.field private mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

.field private mWeiboLayout:Landroid/widget/LinearLayout;

.field private onLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 196
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "user_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "nick"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "status_uid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "pic"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "isretweeted"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "count_attitude"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "count_repost"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "count_comment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->PROJECTION_TIME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    .line 170
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;

    .line 171
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    .line 172
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    .line 173
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    .line 174
    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    .line 175
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupNameCur:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;

    .line 177
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    .line 179
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsLoadGroupPicList:Z

    .line 665
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mErrorHandler:Landroid/os/Handler;

    .line 1249
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->comparator:Ljava/util/Comparator;

    .line 1510
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandler:Landroid/os/Handler;

    .line 1619
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    .line 2171
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableRefresh:Ljava/lang/Runnable;

    .line 2212
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerNotify:Landroid/os/Handler;

    .line 2233
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableRefreshGroup:Ljava/lang/Runnable;

    .line 2343
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$12;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$12;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerLoadMore:Landroid/os/Handler;

    .line 2363
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableLoadMore:Ljava/lang/Runnable;

    .line 2507
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$15;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$15;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->onLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    .line 2897
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mOnGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3017
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLockGroup:[B

    .line 3018
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableGetGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

    .line 3167
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    .line 170
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;

    .line 171
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    .line 172
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    .line 173
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    .line 174
    iput v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    .line 175
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupNameCur:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;

    .line 177
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    .line 179
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsLoadGroupPicList:Z

    .line 665
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mErrorHandler:Landroid/os/Handler;

    .line 1249
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->comparator:Ljava/util/Comparator;

    .line 1510
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandler:Landroid/os/Handler;

    .line 1619
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    .line 2171
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$9;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableRefresh:Ljava/lang/Runnable;

    .line 2212
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$10;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerNotify:Landroid/os/Handler;

    .line 2233
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$11;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableRefreshGroup:Ljava/lang/Runnable;

    .line 2343
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$12;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$12;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerLoadMore:Landroid/os/Handler;

    .line 2363
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$13;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableLoadMore:Ljava/lang/Runnable;

    .line 2507
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$15;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$15;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->onLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    .line 2897
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$18;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mOnGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3017
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLockGroup:[B

    .line 3018
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableGetGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

    .line 3167
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    .line 293
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    .line 294
    sget-object v0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->setContext(Landroid/content/Context;I)V

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;J)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # J

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadDataFromNet(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setEmptyView(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->filterLongImage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadMore()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsLoadGroupPicList:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsLoadGroupPicList:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableRefresh:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsUpdateToDb:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ZJI)Z
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadFriendsStatuses(ZJI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->showTips(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteDataFromDb(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->insertToHomeListTime()V

    return-void
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerNotify:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateUserInfo()V

    return-void
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->sendMassage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableGetGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateFooterView()V

    return-void
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbFooterView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerLoadMore:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadMoreUserImageForWeek(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->PROJECTION_TIME:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLockGroup:[B

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mChildViewOld:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    return v0
.end method

.method static synthetic access$3902(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableRefreshGroup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupNameCur:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupNameCur:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->saveJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mErrorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$HandlerGroup;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbEmptyView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    return-object v0
.end method

.method private configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraKey1"    # Ljava/lang/String;
    .param p3, "extraValue1"    # J
    .param p5, "extraKey2"    # Ljava/lang/String;
    .param p6, "extraValue2"    # J
    .param p8, "extraKey3"    # Ljava/lang/String;
    .param p9, "extraValue3"    # I
    .param p10, "questMode"    # Ljava/lang/String;
    .param p11, "key4"    # Ljava/lang/String;
    .param p12, "val4"    # Ljava/lang/String;

    .prologue
    .line 602
    const/4 v7, 0x0

    .line 603
    .local v7, "result":Ljava/lang/String;
    new-instance v6, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v6}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 606
    .local v6, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessTokenStr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 607
    const-string/jumbo v9, "panhui4_WeiboList"

    const-string v10, "configueOpenUrl, mAccessTokenStr=null!!! get share_pre token!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v8

    .line 609
    .local v8, "token":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v8}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessTokenStr:Ljava/lang/String;

    .line 613
    .end local v8    # "token":Lcom/weibo/sdk/android/Oauth2AccessToken;
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessTokenStr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 614
    const-string/jumbo v9, "panhui4_WeiboList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configueOpenUrl, get share_pre token success!!! token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v9, "access_token"

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessTokenStr:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 618
    move-wide v0, p3

    invoke-virtual {v6, p2, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 620
    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 621
    move-object/from16 v0, p5

    move-wide/from16 v1, p6

    invoke-virtual {v6, v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 623
    :cond_3
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 624
    move-object/from16 v0, p5

    move/from16 v1, p9

    invoke-virtual {v6, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 626
    :cond_4
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 627
    move-object/from16 v0, p11

    move-object/from16 v1, p12

    invoke-virtual {v6, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_5
    const-string v9, "feature"

    const/4 v10, 0x2

    invoke-virtual {v6, v9, v10}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 632
    :try_start_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    move-object/from16 v0, p10

    invoke-static {v9, p1, v0, v6}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 648
    :goto_0
    return-object v7

    .line 634
    :catch_0
    move-exception v5

    .line 635
    .local v5, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v5}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 636
    const-string/jumbo v9, "panhui4_WeiboList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configueOpenUrl, WeiboException111="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    .end local v5    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v4

    .line 639
    .local v4, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 640
    const-string/jumbo v9, "panhui4_WeiboList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configueOpenUrl, UnknownHostException="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    .end local v4    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v3

    .line 643
    .local v3, "eio":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 644
    const-string/jumbo v9, "panhui4_WeiboList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configueOpenUrl, IOException="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteDataFromDb(Z)V
    .locals 5
    .param p1, "isall"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2517
    const-string/jumbo v1, "panhui4_WeiboList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDataFromDb, mWBDisplayType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    if-nez v1, :cond_1

    .line 2544
    :cond_0
    :goto_0
    return-void

    .line 2522
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 2526
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$19;->$SwitchMap$com$lenovo$scg$gallery3d$weibo$ui$WeiboList$WBDisplayType:[I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2529
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListPerson;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2531
    .local v0, "count":I
    if-eqz p1, :cond_0

    .line 2536
    .end local v0    # "count":I
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListTime;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2538
    .restart local v0    # "count":I
    goto :goto_0

    .line 2526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deleteUserinfoFromDb()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$UserInfos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 463
    .local v0, "count":I
    const-string/jumbo v1, "panhui4_WeiboList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUserinfoFromDb, count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private filterLongImage()V
    .locals 0

    .prologue
    .line 1503
    return-void
.end method

.method private getCurrentCount()I
    .locals 5

    .prologue
    .line 2775
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 2776
    const/4 v0, 0x0

    .line 2796
    :cond_0
    :goto_0
    return v0

    .line 2779
    :cond_1
    const/4 v0, 0x0

    .line 2781
    .local v0, "count":I
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$19;->$SwitchMap$com$lenovo$scg$gallery3d$weibo$ui$WeiboList$WBDisplayType:[I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2783
    :pswitch_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 2784
    .local v2, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIdsSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 2785
    goto :goto_1

    .line 2789
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2790
    goto :goto_0

    .line 2781
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getStatusesCount()I
    .locals 1

    .prologue
    .line 2771
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesTotalNumber:I

    return v0
.end method

.method private goToFriendPicListActivity()V
    .locals 22

    .prologue
    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f09041b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1998
    .local v14, "nOffsetTop":I
    const/4 v14, 0x0

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLp:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 2000
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2003
    .local v11, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0x2

    const v19, 0x7f10065a

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2004
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v0, v14, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2005
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLp:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2008
    .end local v11    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->removeOldList()V

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2011
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/16 v17, 0x0

    .line 2012
    .local v17, "wblist":Landroid/view/View;
    const v18, 0x7f0401a8

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 2016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 2017
    .local v13, "nCnt":I
    const/4 v15, 0x0

    .line 2018
    .local v15, "nPos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_1

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2020
    .local v16, "vChild":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v8

    .line 2021
    .local v8, "id":I
    const v18, 0x7f100649

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 2022
    move v15, v7

    .line 2027
    .end local v8    # "id":I
    .end local v16    # "vChild":Landroid/view/View;
    :cond_1
    const/4 v12, 0x0

    .line 2028
    .local v12, "mWeiboLoginPos":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v13, :cond_2

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 2030
    .restart local v16    # "vChild":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v8

    .line 2031
    .restart local v8    # "id":I
    const v18, 0x7f100ab2

    move/from16 v0, v18

    if-ne v8, v0, :cond_6

    .line 2032
    move v12, v7

    .line 2036
    .end local v8    # "id":I
    .end local v16    # "vChild":Landroid/view/View;
    :cond_2
    if-lez v12, :cond_7

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    add-int/lit8 v19, v12, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLp:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    move-object/from16 v18, v17

    .line 2043
    check-cast v18, Landroid/view/ViewGroup;

    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 2044
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "yyyy-MM-DD-HH_mm_ss"

    invoke-direct/range {v18 .. v19}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mFormat:Ljava/text/SimpleDateFormat;

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;

    .line 2047
    const v18, 0x7f100a18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const v19, 0x7f100a2a

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 2052
    const v18, 0x7f100a19

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setVisibility(I)V

    .line 2060
    const v18, 0x7f100a1b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbEmptyView:Landroid/widget/LinearLayout;

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbEmptyView:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0f064d

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setEmptyView(Landroid/content/Context;IZ)V

    .line 2069
    new-instance v18, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090130

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    invoke-direct/range {v18 .. v20}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setType(I)V

    .line 2072
    const/4 v6, 0x0

    .line 2074
    .local v6, "hint":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isWeiboShieldSupported()Z

    move-result v10

    .line 2076
    .local v10, "isSupportShield":Z
    if-eqz v10, :cond_3

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0f0758

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2079
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setLabel(Ljava/lang/String;I)V

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setEditorListener(Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setChangeBackgroundListener(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v18, v0

    sput-object v18, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->mHeaderForWbList:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v19, 0x7f100644

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setImageView(Landroid/widget/ImageView;)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v18, v0

    const v19, 0x7f100ad7

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    .line 2090
    .local v4, "flagViewBig":Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setFlagBigImageView(Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v18, v0

    const v19, 0x7f100ada

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2093
    .local v5, "flagViewSmall":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setFlagSmallImageView(Landroid/widget/ImageView;)V

    .line 2097
    const v18, 0x7f0401c3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbFooterView:Landroid/widget/RelativeLayout;

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbFooterView:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbFooterView:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$7;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbFooterView:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$8;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setWbOnTouchListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbListOnTouch;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setWbOnTouchListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;)V

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->onLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setLoadMoreListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;)V

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessTokenStr:Ljava/lang/String;

    .line 2158
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsAllDisplay:Z

    .line 2159
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z

    .line 2160
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsUpdateToDb:Z

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mUser:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 2163
    new-instance v18, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mUser:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mUser:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;

    move-object/from16 v18, v0

    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$User;->uid:J

    .line 2166
    :cond_4
    sget-object v18, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ALL_FRIENDS_BY_TIME:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateWBDisplayType(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;)V

    .line 2168
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadDataFromDb()V

    .line 2169
    return-void

    .line 2018
    .end local v4    # "flagViewBig":Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;
    .end local v5    # "flagViewSmall":Landroid/widget/ImageView;
    .end local v6    # "hint":Ljava/lang/String;
    .end local v10    # "isSupportShield":Z
    .end local v12    # "mWeiboLoginPos":I
    .restart local v8    # "id":I
    .restart local v16    # "vChild":Landroid/view/View;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2028
    .restart local v12    # "mWeiboLoginPos":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 2040
    .end local v8    # "id":I
    .end local v16    # "vChild":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLp:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method private gotoFriendDetail()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1902
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1905
    :cond_1
    const/4 v5, 0x0

    .line 1906
    .local v5, "userInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v5

    .line 1907
    if-eqz v5, :cond_2

    .line 1908
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFriends_count()I

    move-result v2

    .line 1909
    .local v2, "nFriendCnt":I
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getStatuses_count()I

    move-result v3

    .line 1910
    .local v3, "nStatus":I
    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    .line 1914
    .end local v2    # "nFriendCnt":I
    .end local v3    # "nStatus":I
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->cachePos(I)V

    .line 1915
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clean(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 1916
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1917
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const-class v7, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1918
    const-string v4, ""

    .line 1920
    .local v4, "sName":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1924
    :goto_1
    const-string/jumbo v6, "name"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v7, 0x3

    invoke-virtual {v6, v1, v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1921
    :catch_0
    move-exception v0

    .line 1922
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private gotoWhitelist()V
    .locals 3

    .prologue
    .line 1783
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1785
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1786
    return-void
.end method

.method private insertToHomeListPerson()V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method private insertToHomeListTime()V
    .locals 18

    .prologue
    .line 1011
    const-string/jumbo v14, "panhui4_WeiboList"

    const-string v15, "insertToHomeListTime"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1013
    .local v10, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_4

    .line 1014
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1015
    .local v5, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1016
    .local v13, "values":Landroid/content/ContentValues;
    const-string/jumbo v14, "user_uid"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrUserId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1017
    const-string/jumbo v14, "status_uid"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1018
    const-string/jumbo v14, "nick"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string/jumbo v14, "portrait"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v7

    .line 1022
    .local v7, "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    .line 1023
    :cond_0
    const-string/jumbo v14, "pic"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicMid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :goto_1
    const-string v14, "content"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string/jumbo v14, "time"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string/jumbo v14, "source"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v15, "isretweeted"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->ismIsTweeted()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    const-string v14, "count_attitude"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmAttitudesCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    const-string v14, "count_repost"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRepostsCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    const-string v14, "count_comment"

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    const/4 v11, 0x0

    .line 1047
    .local v11, "uri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListTime;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1013
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1025
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1026
    .local v12, "urlBuffer":Ljava/lang/StringBuffer;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 1027
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, v2, :cond_2

    .line 1028
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;

    iget-object v9, v14, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;->thumbnail_pic:Ljava/lang/String;

    .line 1029
    .local v9, "sUrlOne":Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1030
    const-string v14, "_"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1027
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1032
    .end local v9    # "sUrlOne":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1033
    .local v8, "sAllUrls":Ljava/lang/String;
    const-string/jumbo v14, "pic"

    invoke-virtual {v13, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1039
    .end local v2    # "count":I
    .end local v6    # "j":I
    .end local v8    # "sAllUrls":Ljava/lang/String;
    .end local v12    # "urlBuffer":Ljava/lang/StringBuffer;
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 1048
    .restart local v11    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 1049
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "insertToHomeListTime, Has exception when insert values to cache db,error: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1053
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v7    # "listPic":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_4
    return-void
.end method

.method private isAllDisplay()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2757
    const-string/jumbo v1, "panhui4_WeiboList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "statuses all size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->getStatusesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->getCurrentCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsAllDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsAllDisplay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesTotalNumber:I

    if-nez v1, :cond_1

    .line 2766
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->getStatusesCount()I

    move-result v1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->getCurrentCount()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsAllDisplay:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadDataFromDb()V
    .locals 2

    .prologue
    .line 2547
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$16;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2740
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2741
    return-void
.end method

.method private loadDataFromNet(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 2855
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$17;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$17;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2866
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2867
    return-void
.end method

.method private loadFriendsStatuses(ZJI)Z
    .locals 42
    .param p1, "sendMsg"    # Z
    .param p2, "max_id"    # J
    .param p4, "page"    # I

    .prologue
    .line 678
    const-string/jumbo v4, "panhui4_WeiboList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFriendsStatuses, page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v31, 0x0

    .line 684
    .local v31, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    if-nez v4, :cond_3

    .line 685
    const-string v5, "https://api.weibo.com/2/statuses/friends_timeline.json"

    const-string v6, "count"

    const-wide/16 v7, 0x14

    const-wide/16 v10, 0x0

    cmp-long v4, p2, v10

    if-lez v4, :cond_1

    const-string/jumbo v9, "max_id"

    :goto_0
    const/4 v4, 0x1

    move/from16 v0, p4

    if-le v0, v4, :cond_2

    const-string/jumbo v12, "page"

    :goto_1
    const-string v14, "GET"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v10, p2

    move/from16 v13, p4

    invoke-direct/range {v4 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 691
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z

    .line 709
    :goto_2
    if-nez v31, :cond_8

    .line 710
    const-string/jumbo v4, "panhui4_WeiboList"

    const-string/jumbo v5, "statuses result=null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v4}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v4

    if-nez v4, :cond_7

    .line 713
    :cond_0
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->sendMassage(ILjava/lang/Object;)V

    .line 717
    :goto_3
    const/4 v4, 0x0

    .line 963
    :goto_4
    return v4

    .line 685
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 694
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_4

    .line 695
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    .line 697
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;

    .line 699
    .local v20, "gInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    const-string v5, "https://api.weibo.com/2/friendships/groups/timeline.json"

    const-string v6, "count"

    const-wide/16 v7, 0x14

    const-wide/16 v10, 0x0

    cmp-long v4, p2, v10

    if-lez v4, :cond_5

    const-string/jumbo v9, "max_id"

    :goto_5
    const/4 v4, 0x1

    move/from16 v0, p4

    if-le v0, v4, :cond_6

    const-string/jumbo v12, "page"

    :goto_6
    const-string v14, "GET"

    const-string v15, "list_id"

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getIdstr()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v4, p0

    move-wide/from16 v10, p2

    move/from16 v13, p4

    invoke-direct/range {v4 .. v16}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 706
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z

    goto :goto_2

    .line 699
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    .line 715
    .end local v20    # "gInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    :cond_7
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->sendMassage(ILjava/lang/Object;)V

    goto :goto_3

    .line 721
    :cond_8
    new-instance v21, Lcom/google/gson/Gson;

    invoke-direct/range {v21 .. v21}, Lcom/google/gson/Gson;-><init>()V

    .line 722
    .local v21, "gson":Lcom/google/gson/Gson;
    const/16 v30, 0x0

    .line 724
    .local v30, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;
    :try_start_0
    const-class v4, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    move-object/from16 v30, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_7
    if-nez v30, :cond_9

    .line 735
    const-string/jumbo v4, "panhui4_WeiboList"

    const-string v5, "loadFriendsStatuses, response=null!! "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 725
    :catch_0
    move-exception v19

    .line 726
    .local v19, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mErrorHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mErrorHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->saveJson(Ljava/lang/String;)V

    .line 728
    const-string v4, "Weibolist get json error:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 740
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, v30

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->total_number:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesTotalNumber:I

    .line 741
    const-string/jumbo v4, "panhui4_WeiboList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "statuses totalNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesTotalNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 746
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$19;->$SwitchMap$com$lenovo$scg$gallery3d$weibo$ui$WeiboList$WBDisplayType:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 769
    :cond_a
    :goto_8
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v17

    .line 770
    .local v17, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v28, "mArrShowItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->statuses:Ljava/util/List;

    move-object/from16 v33, v0

    .line 772
    .local v33, "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v32

    .line 773
    .local v32, "resultSize":I
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_9
    move/from16 v0, v24

    move/from16 v1, v32

    if-ge v0, v1, :cond_15

    .line 775
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_c

    if-nez v24, :cond_c

    .line 773
    :cond_b
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 749
    .end local v17    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v24    # "j":I
    .end local v28    # "mArrShowItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    .end local v32    # "resultSize":I
    .end local v33    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;>;"
    :pswitch_0
    const/4 v4, 0x1

    move/from16 v0, p4

    if-gt v0, v4, :cond_a

    .line 750
    const-string/jumbo v4, "panhui4_WeiboList"

    const-string v5, "mIsUpdate!! is first udpate data, clear people data!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 758
    :pswitch_1
    const-string/jumbo v4, "panhui4_WeiboList"

    const-string v5, "mIsUpdate!! clear time data!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 779
    .restart local v17    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .restart local v24    # "j":I
    .restart local v28    # "mArrShowItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    .restart local v32    # "resultSize":I
    .restart local v33    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;>;"
    :cond_c
    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    .line 780
    .local v38, "statusesInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    new-instance v23, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    .line 782
    .local v23, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v40

    .line 783
    .local v40, "userinfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    if-eqz v40, :cond_d

    .line 786
    invoke-virtual/range {v40 .. v40}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v26

    .line 787
    .local v26, "lUserId":J
    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->isShieldUser(J)Z

    move-result v4

    if-nez v4, :cond_b

    .line 790
    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 793
    invoke-virtual/range {v40 .. v40}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {v40 .. v40}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getProfile_image_url()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 799
    .end local v26    # "lUserId":J
    :cond_d
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;

    move-result-object v34

    .line 800
    .local v34, "retweeted_status_info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;
    if-eqz v34, :cond_12

    const/16 v22, 0x1

    .line 803
    .local v22, "isRetweeted":Z
    :goto_b
    if-eqz v22, :cond_e

    invoke-virtual/range {v34 .. v34}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->getBmiddle_pic()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    :cond_e
    if-nez v22, :cond_f

    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getBmiddle_pic()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 809
    :cond_f
    if-eqz v22, :cond_13

    .line 810
    invoke-virtual/range {v34 .. v34}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->getThumbnail_pic()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicThumbnail(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {v34 .. v34}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->getBmiddle_pic()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicMid(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getRetweeted_status()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->getOriginal_pic()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicOriginal(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {v34 .. v34}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;->getPic_urls()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setPicList(Ljava/util/List;)V

    .line 825
    :goto_c
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getId()J

    move-result-wide v36

    .line 826
    .local v36, "s_uid":J
    move-object/from16 v0, v23

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatusesId(J)V

    .line 827
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmIsTweeted(Z)V

    .line 830
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getCreated_at()Ljava/lang/String;

    move-result-object v18

    .line 831
    .local v18, "date":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrCreatedTime(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->parseSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 835
    .local v35, "source":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0735

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz v35, :cond_14

    .end local v35    # "source":Ljava/lang/String;
    :goto_d
    aput-object v35, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setSource(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getText()Ljava/lang/String;

    move-result-object v39

    .line 842
    .local v39, "text":Ljava/lang/String;
    if-eqz v39, :cond_11

    .line 843
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x46

    if-le v4, v5, :cond_10

    .line 846
    :cond_10
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrContent(Ljava/lang/String;)V

    .line 851
    :cond_11
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getReposts_count()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setRepostsCount(I)V

    .line 853
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getComments_count()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setCommentsCount(I)V

    .line 855
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getAttitudes_count()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmAttitudesCount(I)V

    .line 859
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$19;->$SwitchMap$com$lenovo$scg$gallery3d$weibo$ui$WeiboList$WBDisplayType:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_a

    .line 861
    :pswitch_2
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    const-string/jumbo v4, "panhui4_WeiboList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    .line 869
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    goto/16 :goto_a

    .line 800
    .end local v18    # "date":Ljava/lang/String;
    .end local v22    # "isRetweeted":Z
    .end local v36    # "s_uid":J
    .end local v39    # "text":Ljava/lang/String;
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_b

    .line 818
    .restart local v22    # "isRetweeted":Z
    :cond_13
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getBmiddle_pic()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicMid(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getThumbnail_pic()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicThumbnail(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getOriginal_pic()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrPicOriginal(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {v38 .. v38}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getPicList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setPicList(Ljava/util/List;)V

    goto/16 :goto_c

    .line 835
    .restart local v18    # "date":Ljava/lang/String;
    .restart local v35    # "source":Ljava/lang/String;
    .restart local v36    # "s_uid":J
    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const v9, 0x7f0f073d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_d

    .line 878
    .end local v18    # "date":Ljava/lang/String;
    .end local v22    # "isRetweeted":Z
    .end local v23    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v34    # "retweeted_status_info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RetweetedStatus;
    .end local v35    # "source":Ljava/lang/String;
    .end local v36    # "s_uid":J
    .end local v38    # "statusesInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    .end local v40    # "userinfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    :cond_15
    const-string/jumbo v4, "panhui4_WeiboList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentStatusMaxId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-string/jumbo v4, "panhui4_WeiboList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWBDisplayType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$19;->$SwitchMap$com$lenovo$scg$gallery3d$weibo$ui$WeiboList$WBDisplayType:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 948
    :cond_16
    :goto_e
    :pswitch_4
    const-string/jumbo v4, "panhui4_WeiboList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendMsg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    if-eqz p1, :cond_18

    .line 953
    const-string/jumbo v4, "panhui4_WeiboList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsInsertToDb="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_17

    .line 955
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z

    .line 957
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->insertToHomeListTime()V

    .line 960
    :cond_17
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->sendMassage(ILjava/lang/Object;)V

    .line 963
    :cond_18
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 890
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 892
    .local v25, "lastItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIdsSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    .line 907
    .end local v25    # "lastItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->transferDataItem(Ljava/util/ArrayList;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->sort(Ljava/util/ArrayList;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_16

    const/4 v4, 0x4

    move/from16 v0, p4

    if-ge v0, v4, :cond_16

    .line 915
    const-string/jumbo v4, "panhui4_WeiboList"

    const-string v5, "mStatusesItem.size() < 20 => Load data again!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    add-int/lit8 v29, p4, 0x1

    .end local p4    # "page":I
    .local v29, "page":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v6, v7, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadFriendsStatuses(ZJI)Z

    move/from16 p4, v29

    .end local v29    # "page":I
    .restart local p4    # "page":I
    goto/16 :goto_e

    .line 899
    :cond_19
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 900
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    .line 903
    :cond_1a
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    goto :goto_f

    .line 746
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 859
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 886
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private loadMore()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 2375
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->isAllDisplay()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    if-ne v6, v11, :cond_2

    .line 2377
    :cond_0
    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    if-ne v6, v11, :cond_1

    .line 2378
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const v7, 0x7f0f064d

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2505
    :cond_1
    :goto_0
    return-void

    .line 2384
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/SCGUtils;->checkNetWorkIsAvaliable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2389
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    if-eqz v6, :cond_1

    .line 2394
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsInsertToDb:Z

    .line 2395
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsUpdateToDb:Z

    .line 2400
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbFooterView:Landroid/widget/RelativeLayout;

    const v7, 0x7f100ad6

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2403
    .local v1, "imgLoadingMore":Landroid/widget/ImageView;
    sget-object v6, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$19;->$SwitchMap$com$lenovo$scg$gallery3d$weibo$ui$WeiboList$WBDisplayType:[I

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2418
    :goto_1
    :pswitch_0
    const-string/jumbo v6, "panhui4_WeiboList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentStatusMaxId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    const/4 v0, 0x1

    .line 2421
    .local v0, "flag":Z
    if-eqz v0, :cond_3

    .line 2422
    iput v11, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mState:I

    .line 2423
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const v7, 0x7f050049

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 2424
    .local v4, "rotateAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2425
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2427
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getFooterViewsCount()I

    move-result v7

    add-int v3, v6, v7

    .line 2428
    .local v3, "nTotal":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v6, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setSelection(I)V

    .line 2430
    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableLoadMore:Ljava/lang/Runnable;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2431
    .local v5, "td":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2405
    .end local v0    # "flag":Z
    .end local v3    # "nTotal":I
    .end local v4    # "rotateAnimation":Landroid/view/animation/Animation;
    .end local v5    # "td":Ljava/lang/Thread;
    :pswitch_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 2406
    .local v2, "lastItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIdsSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mCurrentStatusMaxId:J

    goto :goto_1

    .line 2435
    .end local v2    # "lastItem":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .restart local v0    # "flag":Z
    :cond_3
    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;

    invoke-direct {v6, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/widget/ImageView;)V

    new-array v7, v10, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$14;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadMoreUserImageForWeek(Z)V
    .locals 0
    .param p1, "sendMsg"    # Z

    .prologue
    .line 1190
    return-void
.end method

.method private removeOldList()V
    .locals 5

    .prologue
    .line 1984
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1985
    .local v2, "nCnt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1986
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1987
    .local v3, "vChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v1

    .line 1988
    .local v1, "id":I
    const v4, 0x7f100a18

    if-ne v1, v4, :cond_1

    .line 1989
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1993
    .end local v1    # "id":I
    .end local v3    # "vChild":Landroid/view/View;
    :cond_0
    return-void

    .line 1985
    .restart local v1    # "id":I
    .restart local v3    # "vChild":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private saveJson(Ljava/lang/String;)V
    .locals 5
    .param p1, "sJson"    # Ljava/lang/String;

    .prologue
    .line 658
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "date_time":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wb_LFStatuses_json_ex_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/common/utils/file/CacheUtils;->writeCacheData(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .end local v0    # "date_time":Ljava/lang/String;
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMassage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1506
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1507
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1508
    return-void
.end method

.method private setAccessToken(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Lcom/weibo/sdk/android/Oauth2AccessToken;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 524
    return-void
.end method

.method private setDefaultBackgroundImage()V
    .locals 2

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    const v1, 0x7f0209c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1721
    :cond_0
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

    .line 1464
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbEmptyView:Landroid/widget/LinearLayout;

    const v6, 0x7f100a1c

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1466
    .local v2, "emptytext":Landroid/widget/TextView;
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1467
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1468
    const v0, 0x7f0f064d

    if-eq p2, v0, :cond_2

    const v0, 0x7f0f0721

    if-eq p2, v0, :cond_2

    .line 1469
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1475
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbEmptyView:Landroid/widget/LinearLayout;

    const v6, 0x7f100a1e

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1477
    .local v4, "emptybtn":Landroid/widget/Button;
    if-eqz p3, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbEmptyView:Landroid/widget/LinearLayout;

    const v6, 0x7f100a1d

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1480
    .local v5, "imgHint":Landroid/widget/ImageView;
    if-eqz p3, :cond_4

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1482
    invoke-virtual {v4}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1497
    :cond_1
    return-void

    .line 1471
    .end local v4    # "emptybtn":Landroid/widget/Button;
    .end local v5    # "imgHint":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .restart local v4    # "emptybtn":Landroid/widget/Button;
    :cond_3
    move v0, v3

    .line 1477
    goto :goto_1

    .restart local v5    # "imgHint":Landroid/widget/ImageView;
    :cond_4
    move v1, v3

    .line 1480
    goto :goto_2
.end method

.method private setUserBackgroundImage()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1724
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    move v2, v4

    .line 1746
    :cond_0
    :goto_0
    return v2

    .line 1728
    :cond_1
    const/4 v2, 0x0

    .line 1731
    .local v2, "result":Z
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserBackgroundPath()Ljava/lang/String;

    move-result-object v1

    .line 1732
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v3, "panhui4_WeiboList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserBackgroundImage, path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1735
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1736
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 1737
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1738
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1739
    const/4 v2, 0x1

    goto :goto_0

    .line 1741
    :cond_2
    const-string/jumbo v3, "panhui4_WeiboList"

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
    .line 2314
    .local p1, "arrItemOld":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    const/4 v5, 0x0

    .line 2315
    .local v5, "nNewCnt":I
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2316
    .local v6, "sizeNew":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2317
    .local v7, "sizeOld":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 2318
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 2319
    .local v2, "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    const/4 v0, 0x1

    .line 2320
    .local v0, "bNew":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v7, :cond_1

    .line 2321
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 2322
    .local v3, "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 2320
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2325
    :cond_0
    const/4 v0, 0x0

    .line 2329
    .end local v3    # "itemOld":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_1
    if-eqz v0, :cond_2

    .line 2330
    add-int/lit8 v5, v5, 0x1

    .line 2317
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2338
    .end local v0    # "bNew":Z
    .end local v2    # "itemNew":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v4    # "j":I
    :cond_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mHandlerTips:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;

    invoke-virtual {v8, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$TipsHandler;->setCount(I)V

    .line 2341
    return-void
.end method

.method private sort(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 1246
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1247
    return-void
.end method

.method private startPhotographerActivity()V
    .locals 3

    .prologue
    .line 1868
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/materialCenter/photoGrapherWorker/PhotographerWorkAcitivty;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1869
    .local v0, "requestIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1870
    return-void
.end method

.method private startPickSinglePicsActivity()V
    .locals 3

    .prologue
    .line 1856
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1857
    .local v0, "requestIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1858
    const-string v1, "android.boxcontrol.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1859
    const-string/jumbo v1, "request_pics_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1864
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1865
    return-void
.end method

.method private transferDataItem(Ljava/util/ArrayList;)V
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
    .line 1265
    .local p1, "mArrShowItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1270
    .local v8, "size":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v8, :cond_f

    .line 1272
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1273
    .local v4, "item1":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    const/4 v6, 0x0

    .line 1274
    .local v6, "j":I
    const/4 v2, 0x0

    .line 1275
    .local v2, "isEquals":Z
    const/4 v6, 0x0

    :goto_2
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_5

    .line 1276
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1279
    .local v5, "item2":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1281
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnails()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1284
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStrPicThumbnail(Ljava/lang/String;)V

    .line 1307
    :cond_2
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1309
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStatusesId(Ljava/lang/Long;)V

    .line 1312
    :cond_3
    const/4 v2, 0x1

    .line 1275
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1316
    .end local v5    # "item2":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_5
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v6, v9, :cond_6

    if-nez v2, :cond_6

    .line 1318
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStrPicThumbnail(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStatusesId(Ljava/lang/Long;)V

    .line 1323
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1331
    .end local v0    # "i":I
    .end local v2    # "isEquals":Z
    .end local v4    # "item1":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v6    # "j":I
    :cond_7
    const/4 v1, -0x1

    .line 1332
    .local v1, "isAddIndex":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v8, :cond_f

    .line 1333
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1334
    .restart local v4    # "item1":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    const/4 v6, 0x0

    .line 1335
    .restart local v6    # "j":I
    const/4 v2, 0x0

    .line 1336
    .restart local v2    # "isEquals":Z
    const/4 v1, -0x1

    .line 1337
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_d

    .line 1338
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1341
    .restart local v5    # "item2":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-eq v0, v6, :cond_c

    .line 1344
    const/4 v2, 0x1

    .line 1346
    if-ge v0, v6, :cond_a

    .line 1347
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnails()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1350
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStrPicThumbnail(Ljava/lang/String;)V

    .line 1358
    :cond_8
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStrPicThumbnail(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1384
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStatusesId(Ljava/lang/Long;)V

    .line 1386
    :cond_9
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStatusesId(Ljava/lang/Long;)V

    .line 1393
    :cond_a
    const/4 v9, -0x1

    if-ne v1, v9, :cond_b

    if-ge v0, v6, :cond_b

    .line 1395
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    :cond_b
    move v1, v6

    .line 1337
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1409
    .end local v5    # "item2":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_d
    if-ne v6, v8, :cond_e

    if-nez v2, :cond_e

    .line 1411
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStrPicThumbnail(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->addmStatusesId(Ljava/lang/Long;)V

    .line 1416
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 1422
    .end local v1    # "isAddIndex":I
    .end local v2    # "isEquals":Z
    .end local v4    # "item1":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .end local v6    # "j":I
    :cond_f
    const-string/jumbo v9, "panhui4_WeiboList"

    const-string v10, "--------------------------------------"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v7, 0x0

    .local v7, "m":I
    :goto_5
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_10

    .line 1424
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 1425
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    const-string/jumbo v9, "panhui4_WeiboList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".item="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", imageUrl size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrPicThumbnailsSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", statuses id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStatusesIds()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1429
    .end local v3    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_10
    const-string/jumbo v9, "panhui4_WeiboList"

    const-string v10, "--------------------------------------"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateFooterView()V
    .locals 0

    .prologue
    .line 2754
    return-void
.end method

.method private updateHomelistPerson(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;II)V
    .locals 0
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p2, "remain"    # I
    .param p3, "size"    # I

    .prologue
    .line 1242
    return-void
.end method

.method private updateUserInfo()V
    .locals 14

    .prologue
    .line 2267
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbHeaderView:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->getUserItem()Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v2

    .line 2268
    .local v2, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    if-nez v2, :cond_1

    .line 2308
    :cond_0
    :goto_0
    return-void

    .line 2270
    :cond_1
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2271
    .local v8, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2272
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v11

    .line 2273
    .local v11, "sName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2274
    const-string/jumbo v12, "screenName"

    invoke-interface {v0, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2276
    :cond_2
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getFriends()I

    move-result v7

    .line 2277
    .local v7, "nFriends":I
    if-ltz v7, :cond_3

    .line 2278
    const-string v12, "friendsCount"

    invoke-interface {v0, v12, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2280
    :cond_3
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getFollowers()I

    move-result v6

    .line 2281
    .local v6, "nFollowers":I
    if-ltz v6, :cond_4

    .line 2282
    const-string v12, "followsCount"

    invoke-interface {v0, v12, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2284
    :cond_4
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatus()I

    move-result v3

    .line 2285
    .local v3, "nCount":I
    if-ltz v3, :cond_5

    .line 2286
    const-string/jumbo v12, "statusesCount"

    invoke-interface {v0, v12, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2288
    :cond_5
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v10

    .line 2289
    .local v10, "sHead":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 2290
    const-string/jumbo v12, "profileImageUrl"

    invoke-interface {v0, v12, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2292
    :cond_6
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserDescription()Ljava/lang/String;

    move-result-object v9

    .line 2293
    .local v9, "sDesc":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 2294
    const-string v12, "description"

    invoke-interface {v0, v12, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2296
    :cond_7
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserId()J

    move-result-wide v4

    .line 2297
    .local v4, "lUserId":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_8

    .line 2301
    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2303
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheFriend(J)Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;

    move-result-object v1

    .line 2304
    .local v1, "fi":Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;
    if-eqz v1, :cond_0

    if-ltz v3, :cond_0

    .line 2305
    iput v3, v1, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity$FriendItem;->nTotalStatus:I

    goto :goto_0
.end method

.method private updateWBDisplayType(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;)V
    .locals 4
    .param p1, "wBDisplayType"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    .prologue
    const/4 v3, 0x1

    .line 2801
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    .line 2803
    const-string/jumbo v0, "panhui4_WeiboList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWBDisplayType, mWBDisplayType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$19;->$SwitchMap$com$lenovo$scg$gallery3d$weibo$ui$WeiboList$WBDisplayType:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2851
    :goto_0
    return-void

    .line 2808
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    .line 2812
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    .line 2816
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    if-nez v0, :cond_2

    .line 2817
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    .line 2818
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->setListView(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)V

    .line 2820
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->setmArrShowItem(Ljava/util/ArrayList;)V

    .line 2821
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 2823
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->setLoading(Z)V

    goto :goto_0

    .line 2828
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    .line 2832
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    if-nez v0, :cond_4

    .line 2833
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    .line 2834
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->setListView(Landroid/widget/ListView;)V

    .line 2836
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/FriendDetailWbActivity;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    .line 2837
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    .line 2838
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ReplyRepostActivity;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    .line 2841
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->setmArrShowItem(Ljava/util/ArrayList;)V

    .line 2842
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 2844
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->setLoading(Z)V

    goto :goto_0

    .line 2805
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearMemory()V
    .locals 1

    .prologue
    .line 3163
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 3164
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearAll()V

    .line 3165
    return-void
.end method

.method public clearWBAllFrinedsReference()V
    .locals 2

    .prologue
    .line 373
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string v1, "clearWBAllReference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->clean()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clean(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 380
    :cond_1
    return-void
.end method

.method public clearWBFrinedDetailReference()V
    .locals 2

    .prologue
    .line 401
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string v1, "clearWBFrinedDetailReference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mFriendDetailAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendDetailWbAdapter;->clean()V

    goto :goto_0
.end method

.method public deleteTimeDb(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1933
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1934
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$HomeListTime;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1935
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->clearMemory()V

    .line 1936
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    if-eqz v2, :cond_0

    .line 1937
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clean(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 1939
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1940
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeStatusesItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1942
    :cond_1
    return-void
.end method

.method public getAccessTokenStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessTokenStr:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupSelectCur()Ljava/lang/String;
    .locals 7

    .prologue
    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 321
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f06d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    :goto_0
    return-object v2

    .line 325
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 326
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupIndexCur:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;

    .line 327
    .local v1, "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 330
    .end local v1    # "info":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "getGroupSelectCur error: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideGroupMenu()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3007
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 3014
    :cond_0
    :goto_0
    return v0

    .line 3010
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3011
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3012
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initWeibo(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6
    .param p1, "v"    # Landroid/view/ViewGroup;
    .param p2, "lp"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v5, 0x0

    .line 528
    :try_start_0
    const-string/jumbo v2, "panhui4_WeiboList"

    const-string v3, "initWeibo"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 531
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultHeadBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 532
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultCmtUserBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 533
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 534
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultTimeFailedBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 540
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    const-string/jumbo v2, "panhui4_WeiboList"

    const-string v3, "mAccessToken!=null && isSessionValid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->notifyDataSetChanged()V

    .line 545
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setVisibilityViews(II)V

    .line 546
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->onNetStateChange()V

    .line 571
    .end local v0    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    :goto_0
    return-void

    .line 549
    .restart local v0    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    .line 550
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLp:Landroid/widget/RelativeLayout$LayoutParams;

    .line 552
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cacheLayout(Landroid/content/Context;)V

    .line 554
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 555
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    const-string/jumbo v2, "panhui4_WeiboList"

    const-string/jumbo v3, "read local mAccessToken is SessionValid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->goToFriendPicListActivity()V

    .line 566
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->onNetStateChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    .end local v0    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "initWeibo error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "panhui4_WeiboList"

    const-string/jumbo v3, "read local mAccessToken not valid, get mAccessToken from net!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->goToFriendPicListActivity()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public isGetGroupList()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 312
    :cond_0
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLoadImage(I)V
    .locals 0
    .param p1, "scrollState"    # I

    .prologue
    .line 2889
    return-void
.end method

.method public logout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setAccessToken(Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;->clean()V

    .line 472
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/FriendWeiBoAdapter;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->clean(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 477
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mTimeAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 484
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteUserinfoFromDb()V

    .line 485
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->deleteDataFromDb(Z)V

    .line 516
    return-void
.end method

.method public moveToFirst()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1977
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setSelection(I)V

    .line 1979
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->smoothScrollToPosition(I)V

    .line 1981
    :cond_0
    return-void
.end method

.method public onChangeBackgroundRequst(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1874
    packed-switch p1, :pswitch_data_0

    .line 1899
    :goto_0
    return-void

    .line 1876
    :pswitch_0
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string/jumbo v1, "onGalleryRequst"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_mainlist"

    const-string v2, "action_weibo_sina_mainlist_changebackgrounddialog_gallery"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1883
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->startPickSinglePicsActivity()V

    goto :goto_0

    .line 1887
    :pswitch_1
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string/jumbo v1, "onPhotographerRequst"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_mainlist"

    const-string v2, "action_weibo_sina_mainlist_changebackgrounddialog_grapher"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1894
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->startPhotographerActivity()V

    goto :goto_0

    .line 1874
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1769
    const-string/jumbo v1, "panhui4_WeiboList"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weibo switch is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "Time"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    if-eqz p2, :cond_1

    .line 1773
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ALL_FRIENDS_BY_TIME:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateWBDisplayType(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;)V

    .line 1780
    :goto_1
    return-void

    .line 1769
    :cond_0
    const-string v0, "People"

    goto :goto_0

    .line 1777
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ALL_FRIENDS_BY_PEOPLE:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateWBDisplayType(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 392
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 393
    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TimeStatusesListAdapter2;->mArrCacheItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 395
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 396
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearAll()V

    .line 397
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearFriend()V

    .line 398
    return-void
.end method

.method public onNetStateChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1945
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 1974
    :cond_0
    :goto_0
    return-void

    .line 1947
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f100a1a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1948
    .local v1, "tvHint":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1949
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1950
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const v3, 0x7f050052

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1952
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1953
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$6;

    invoke-direct {v2, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$6;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1965
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1968
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1969
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f073b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1970
    const/high16 v2, 0x72ff0000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1971
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const v3, 0x7f050051

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1972
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->clearWBAllFrinedsReference()V

    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 389
    :cond_0
    return-void
.end method

.method public onRequest(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1791
    packed-switch p1, :pswitch_data_0

    .line 1817
    :goto_0
    return-void

    .line 1793
    :pswitch_0
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string/jumbo v1, "onRequest, type=REQUEST_HANDLER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_mainlist"

    const-string v2, "action_weibo_sina_mainlist_whitelist_btn"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1801
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->gotoWhitelist()V

    goto :goto_0

    .line 1805
    :pswitch_1
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string/jumbo v1, "onRequest, type=REQUEST_PHOTO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_mainlist"

    const-string v2, "action_weibo_sina_mainlist_clickmyphoto"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1813
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->gotoFriendDetail()V

    goto :goto_0

    .line 1791
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openSendWeibo()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public setBackgroundImage()V
    .locals 3

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1707
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1709
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setUserBackgroundImage()Z

    move-result v0

    .line 1711
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 1712
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setDefaultBackgroundImage()V

    goto :goto_0
.end method

.method public setBackgroundImageFromPath(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "needSave"    # Z

    .prologue
    .line 1821
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 1853
    :goto_0
    return-void

    .line 1825
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "weibo_header_background.jpg"

    invoke-static {v3, v4, p2}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1828
    .local v1, "croppedPath":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1829
    move-object p1, v1

    .line 1832
    :cond_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1834
    .local v0, "bm":Landroid/graphics/Bitmap;
    const-string/jumbo v3, "panhui4_WeiboList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBackgroundImageFromPath, path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",bm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const/4 v2, 0x1

    .line 1838
    .local v2, "saveResult":Z
    if-eqz p2, :cond_2

    .line 1839
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->saveBitmapToPath(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    .line 1841
    :cond_2
    const-string/jumbo v3, "panhui4_WeiboList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBackgroundImageFromPath, saveResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 1845
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1846
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1848
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->setUserBackgroundPath(Ljava/lang/String;)V

    goto :goto_0

    .line 1851
    :cond_3
    const-string/jumbo v3, "panhui4_WeiboList"

    const-string/jumbo v4, "setBackgroundImageFromPath, bm=null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFriendUID(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 419
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbFriendUid:J

    .line 420
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visible"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 299
    const-string/jumbo v0, "panhui4_WeiboList"

    const-string/jumbo v1, "setVisibility, mWeiboLayout=null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string/jumbo v0, "panhui4_WeiboList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVisibility, mWeiboLayout visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWeiboLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibilityViews(II)V
    .locals 2
    .param p1, "list_visible"    # I
    .param p2, "image_visible"    # I

    .prologue
    .line 1687
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->setVisibility(I)V

    .line 1689
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1693
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    if-eqz v1, :cond_1

    .line 1694
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1695
    .local v0, "nPos":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setSelection(I)V

    .line 1696
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbContentList:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->smoothScrollToPosition(I)V

    .line 1697
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->cancelAllTask()V

    .line 1698
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->cancelAllTask()V

    .line 1700
    .end local v0    # "nPos":I
    :cond_1
    return-void
.end method

.method public setWBDisplayType(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;Z)V
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;
    .param p2, "forceload"    # Z

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWBDisplayType:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    .line 411
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->updateWBDisplayType(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;)V

    .line 413
    if-eqz p2, :cond_0

    .line 414
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbFriendUid:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->loadDataFromNet(J)V

    .line 416
    :cond_0
    return-void
.end method

.method public setWbGroupStatueChangeListener(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    .prologue
    .line 2894
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupListener:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$OnWbGroupStateChangeListener;

    .line 2895
    return-void
.end method

.method public toggleGroupMenu()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2974
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 2976
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2977
    .local v1, "lpMenu":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x2

    const v4, 0x7f10065a

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2978
    const/4 v3, 0x3

    const v4, 0x7f100649

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2979
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2981
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2982
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0401a6

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    .line 2983
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2985
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    const v4, 0x7f10084f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;

    .line 2986
    new-instance v3, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    .line 2987
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mWbGroupAdapter:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WbGroupAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2988
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mLvWeiboGroup:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mOnGroupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2990
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2992
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableGetGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;->SetWorkMode(I)V

    .line 2993
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mIsLoadGroupPicList:Z

    .line 2994
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mRunnableGetGroup:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$RunnableGetGroup;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2995
    .local v2, "td":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 3004
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "lpMenu":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "td":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 2998
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2999
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 3001
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;->mGroupMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateDisplayType()Z
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 360
    .local v0, "result":Z
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;)V

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$1;->start()V

    .line 367
    return v0
.end method
