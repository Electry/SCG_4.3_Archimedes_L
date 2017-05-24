.class public Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;
.super Landroid/app/Activity;
.source "WeiboGetAtActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$13;
    }
.end annotation


# static fields
.field public static final GET_AT_RESULT:I = 0x1001

.field public static final KEY_AT_INFO_NUMBER:Ljava/lang/String; = "at_number"

.field public static final KEY_SINA_AT_INFO:Ljava/lang/String; = "sina_at_info"

.field public static final KEY_TENCENT_AT_INFO:Ljava/lang/String; = "tencent_at_info"

.field private static final MSG_DISSMISS_DIALOG:I = 0x3

.field private static final MSG_UPDATE_SINA_ATTENTION_LIST:I = 0x1

.field private static final MSG_UPDATE_TENCENT_ATTENTION_LIST:I = 0x2


# instance fields
.field private mAdapterDataCollection:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation
.end field

.field private mAttentionPeopleBottomLine:Landroid/widget/ImageView;

.field private mAttentionPeopleText:Landroid/widget/TextView;

.field private mConfirmBtn:Landroid/widget/Button;

.field private mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

.field private mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

.field private mHandler:Landroid/os/Handler;

.field private mIsRefresh:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecentlyAtBottomLine:Landroid/widget/ImageView;

.field private mRecentlyAtText:Landroid/widget/TextView;

.field private mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

.field private mSearchInput:Landroid/widget/EditText;

.field private mSearchResultList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation
.end field

.field private mSinaAttentionUserList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation
.end field

.field private mSinaRecentAtUserList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation
.end field

.field private mSinaTabTopView:Landroid/view/View;

.field private mSinaWeiTabText:Landroid/widget/TextView;

.field private mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

.field private mTencentAttentionUserList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation
.end field

.field private mTencentRecentAtUserList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation
.end field

.field private mTencentTabTopView:Landroid/view/View;

.field private mTencentWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

.field private mTencentWeiboTabText:Landroid/widget/TextView;

.field private mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

.field private searchResultAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private sinaAttentionListRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

.field private sinaRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private tencentAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private tencentAttentionRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

.field private tencentRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mIsRefresh:Z

    .line 79
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaAttentionListRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    .line 132
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->tencentAttentionRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    .line 139
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 149
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->searchResultAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 164
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 177
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->tencentAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 190
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$8;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->tencentRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mIsRefresh:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mIsRefresh:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchResultList:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->isInValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->searchResultAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->dissmissDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getSinaAttentionList(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getTencentAttentionList(Z)V

    return-void
.end method

.method private clickOkButton()V
    .locals 10

    .prologue
    const/16 v9, 0x8c

    .line 382
    const-string v7, "DEBUG_SINA"

    const-string v8, "@\u5b8c\u6bd5"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_1

    .line 385
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 386
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 387
    .local v6, "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    if-eqz v7, :cond_0

    .line 388
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    sget-object v8, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-virtual {v7, v6, v8}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->addRecentlyAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)V

    .line 385
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_3

    .line 394
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 395
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 396
    .restart local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    if-eqz v7, :cond_2

    .line 397
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    sget-object v8, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-virtual {v7, v6, v8}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->addRecentlyAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)V

    .line 394
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 401
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_3
    const/4 v0, 0x0

    .line 403
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    .local v3, "sinaBuffer":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_5

    .line 405
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 406
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 407
    .restart local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    add-int/lit8 v0, v0, 0x1

    .line 405
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 413
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_5
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_8

    .line 414
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 415
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 416
    .restart local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 417
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    add-int/lit8 v0, v0, 0x1

    .line 414
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 421
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_7
    const-string v7, "DEBUG_SINA"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v1    # "i":I
    :cond_8
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 426
    .local v5, "tencentBuffer":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_a

    .line 427
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_a

    .line 428
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;

    .line 429
    .local v6, "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 430
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    add-int/lit8 v0, v0, 0x1

    .line 427
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 435
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    :cond_a
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_c

    .line 436
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_c

    .line 437
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;

    .line 438
    .restart local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    add-int/lit8 v0, v0, 0x1

    .line 436
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 446
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    :cond_c
    const/4 v2, 0x0

    .line 447
    .local v2, "isTooLong":Z
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 448
    .local v4, "size":I
    if-eqz v3, :cond_d

    .line 449
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v9, :cond_d

    .line 450
    const/4 v2, 0x1

    .line 454
    :cond_d
    if-eqz v5, :cond_e

    .line 455
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v9, :cond_e

    .line 456
    const/4 v2, 0x1

    .line 459
    :cond_e
    if-eqz v2, :cond_f

    .line 460
    const v7, 0x7f0f07e4

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 472
    :goto_6
    return-void

    .line 463
    :cond_f
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/lenovo/scg/gallery3d/weibo/activities/SingleImageViewActivity2;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v7, "sina_at_info"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string/jumbo v7, "tencent_at_info"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v7, "at_number"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->setResult(ILandroid/content/Intent;)V

    .line 468
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->finish()V

    goto :goto_6
.end method

.method private clickSinaAttentionButton()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaAttentionListRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getSinaAttentionList(Z)V

    .line 487
    return-void
.end method

.method private clickSinaRecentlyAtButton()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->getRecentAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 477
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 478
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 479
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 482
    :cond_0
    return-void
.end method

.method private clickTencentAttentionButton()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->tencentAttentionRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->tencentAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getTencentAttentionList(Z)V

    .line 511
    return-void
.end method

.method private clickTencentRecentlyAtButton()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->getRecentAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 491
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 492
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->tencentRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 494
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 497
    :cond_0
    return-void
.end method

.method private dissmissDialog()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 340
    return-void
.end method

.method private getSinaAttentionList(Z)V
    .locals 1
    .param p1, "refresh"    # Z

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->showProgressDialog()V

    .line 350
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    .line 351
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$11;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Z)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$11;->start()V

    .line 363
    return-void
.end method

.method private getTencentAttentionList(Z)V
    .locals 1
    .param p1, "refresh"    # Z

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->showProgressDialog()V

    .line 366
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    .line 367
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$12;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;Z)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$12;->start()V

    .line 379
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    .line 214
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    .line 215
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    .line 216
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    .line 217
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->setDataCollection(Ljava/util/LinkedList;)V

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaAttentionListRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getSinaAttentionList(Z)V

    .line 225
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->showProgressDialog()V

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaTabTopView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaTabTopView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 239
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getSinaAttentionList(Z)V

    .line 240
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->showProgressDialog()V

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaAttentionListRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 244
    :cond_3
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 250
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getTencentAttentionList(Z)V

    .line 251
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->showProgressDialog()V

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->tencentAttentionRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->tencentAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0f07e2

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 268
    const v0, 0x7f1008b7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaTabTopView:Landroid/view/View;

    .line 269
    const v0, 0x7f1008bb

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentTabTopView:Landroid/view/View;

    .line 270
    const v0, 0x7f1008b8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f1008bc

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f1008bf

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v0, 0x7f1008c0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    .line 275
    const v0, 0x7f1008c1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v0, 0x7f1008c2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    .line 278
    const v0, 0x7f1008c5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mConfirmBtn:Landroid/widget/Button;

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mConfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v0, 0x7f1008c3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    .line 281
    const v0, 0x7f1008bd

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchInput:Landroid/widget/EditText;

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 334
    return-void
.end method

.method private isInValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v2, "\\w+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 345
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 346
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private showProgressDialog()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 337
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 536
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaTabTopView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentTabTopView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 543
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 544
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 545
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 546
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .line 547
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 548
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 549
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->clickSinaAttentionButton()V

    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 553
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaTabTopView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentTabTopView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 559
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 560
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 561
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 562
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 563
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .line 564
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 565
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 566
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->clickTencentAttentionButton()V

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mSearchInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 570
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 571
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 572
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 575
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    if-ne v0, v1, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->clickSinaRecentlyAtButton()V

    goto/16 :goto_0

    .line 578
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->clickTencentRecentlyAtButton()V

    goto/16 :goto_0

    .line 582
    :sswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 584
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 585
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 588
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    if-ne v0, v1, :cond_1

    .line 589
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->clickSinaAttentionButton()V

    goto/16 :goto_0

    .line 591
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->clickTencentAttentionButton()V

    goto/16 :goto_0

    .line 595
    :sswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 596
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->clickOkButton()V

    goto/16 :goto_0

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1008b6 -> :sswitch_0
        0x7f1008ba -> :sswitch_1
        0x7f1008bf -> :sswitch_2
        0x7f1008c1 -> :sswitch_3
        0x7f1008c5 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->requestWindowFeature(I)Z

    .line 206
    const v0, 0x7f0401bd

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->setContentView(I)V

    .line 207
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->initView()V

    .line 208
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->initData()V

    .line 209
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WeiboGetAtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 210
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 531
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 525
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 526
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 517
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 518
    return-void
.end method
