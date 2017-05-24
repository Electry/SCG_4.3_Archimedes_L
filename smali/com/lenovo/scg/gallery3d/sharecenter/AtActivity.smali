.class public Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;
.super Landroid/app/Activity;
.source "AtActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$13;
    }
.end annotation


# static fields
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

.field private mConfirmBtn:Landroid/widget/TextView;

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

.field private mSeperateView:Landroid/view/View;

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

.field private mSinaTabLayout:Landroid/widget/RelativeLayout;

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

.field private mTencentTabLayout:Landroid/widget/RelativeLayout;

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
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mIsRefresh:Z

    .line 109
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    .line 173
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentAttentionRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    .line 182
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 193
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->searchResultAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 204
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 217
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 230
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$8;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mIsRefresh:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mIsRefresh:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getSinaAttentionList(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getTencentAttentionList(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchResultList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchResultList:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->isInValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->searchResultAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->dissmissDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabTopView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabTopView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private clickOkButton()V
    .locals 10

    .prologue
    const/16 v9, 0x8c

    .line 443
    const-string v7, "DEBUG_SINA"

    const-string v8, "@\u5b8c\u6bd5"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_1

    .line 446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 447
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 448
    .local v6, "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    if-eqz v7, :cond_0

    .line 449
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    sget-object v8, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-virtual {v7, v6, v8}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->addRecentlyAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)V

    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_3

    .line 455
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 456
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 457
    .restart local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    if-eqz v7, :cond_2

    .line 458
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    sget-object v8, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-virtual {v7, v6, v8}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->addRecentlyAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)V

    .line 455
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 462
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_3
    const/4 v0, 0x0

    .line 464
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 465
    .local v3, "sinaBuffer":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_5

    .line 466
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 467
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 468
    .restart local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 469
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

    .line 470
    add-int/lit8 v0, v0, 0x1

    .line 466
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 474
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_5
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_8

    .line 475
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 476
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 477
    .restart local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 478
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

    .line 479
    add-int/lit8 v0, v0, 0x1

    .line 475
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 482
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_7
    const-string v7, "DEBUG_SINA"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v1    # "i":I
    :cond_8
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 487
    .local v5, "tencentBuffer":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_a

    .line 488
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_a

    .line 489
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;

    .line 490
    .local v6, "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    add-int/lit8 v0, v0, 0x1

    .line 488
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 499
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    :cond_a
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    if-eqz v7, :cond_c

    .line 500
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_c

    .line 501
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;

    .line 502
    .restart local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 503
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

    .line 504
    add-int/lit8 v0, v0, 0x1

    .line 500
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 510
    .end local v1    # "i":I
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;
    :cond_c
    const/4 v2, 0x0

    .line 511
    .local v2, "isTooLong":Z
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 512
    .local v4, "size":I
    if-eqz v3, :cond_d

    .line 513
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v9, :cond_d

    .line 514
    const/4 v2, 0x1

    .line 518
    :cond_d
    if-eqz v5, :cond_e

    .line 519
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v9, :cond_e

    .line 520
    const/4 v2, 0x1

    .line 523
    :cond_e
    if-eqz v2, :cond_f

    .line 524
    const v7, 0x7f0f07e4

    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 536
    :goto_6
    return-void

    .line 527
    :cond_f
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v7, "sina_at_info"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string/jumbo v7, "tencent_at_info"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v7, "at_number"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 531
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->setResult(ILandroid/content/Intent;)V

    .line 532
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->finish()V

    goto :goto_6
.end method

.method private clickSinaAttentionButton()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 551
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 553
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getSinaAttentionList(Z)V

    .line 561
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private clickSinaRecentlyAtButton()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->getRecentAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    .line 540
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 544
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 547
    :cond_0
    return-void
.end method

.method private clickTencentAttentionButton()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentAttentionRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 585
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 586
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 587
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getTencentAttentionList(Z)V

    .line 595
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private clickTencentRecentlyAtButton()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->getRecentAtUser(Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;)Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    .line 565
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 566
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentRecentAtListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 568
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 569
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentRecentAtUserList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 572
    :cond_0
    return-void
.end method

.method private dissmissDialog()V
    .locals 4

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 396
    return-void
.end method

.method private getSinaAttentionList(Z)V
    .locals 1
    .param p1, "refresh"    # Z

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->showProgressDialog()V

    .line 408
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaAttentionUserList:Ljava/util/LinkedList;

    .line 409
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Z)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$11;->start()V

    .line 422
    return-void
.end method

.method private getTencentAttentionList(Z)V
    .locals 1
    .param p1, "refresh"    # Z

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->showProgressDialog()V

    .line 426
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentAttentionUserList:Ljava/util/LinkedList;

    .line 427
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$12;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;Z)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$12;->start()V

    .line 440
    return-void
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtUsersManager:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager;

    .line 254
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    .line 255
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    .line 256
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    .line 257
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->setDataCollection(Ljava/util/LinkedList;)V

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getSinaAttentionList(Z)V

    .line 265
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->showProgressDialog()V

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabTopView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentWeiboManager:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSeperateView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 284
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getSinaAttentionList(Z)V

    .line 285
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->showProgressDialog()V

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->sinaAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 289
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSeperateView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 298
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getTencentAttentionList(Z)V

    .line 299
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->showProgressDialog()V

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentAttentionRefreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->tencentAttentionListClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0f07e2

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 318
    const v0, 0x7f1008b7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabTopView:Landroid/view/View;

    .line 319
    const v0, 0x7f1008bb

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabTopView:Landroid/view/View;

    .line 320
    const v0, 0x7f1008b9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSeperateView:Landroid/view/View;

    .line 321
    const v0, 0x7f1008b8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f1008bc

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f1008b6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabLayout:Landroid/widget/RelativeLayout;

    .line 324
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v0, 0x7f1008ba

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabLayout:Landroid/widget/RelativeLayout;

    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v0, 0x7f1008bf

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v0, 0x7f1008c0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    .line 330
    const v0, 0x7f1008c1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v0, 0x7f1008c2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    .line 333
    const v0, 0x7f1008c5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mConfirmBtn:Landroid/widget/TextView;

    .line 334
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mConfirmBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v0, 0x7f1008c3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    .line 336
    const v0, 0x7f1008bd

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchInput:Landroid/widget/EditText;

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 388
    return-void
.end method

.method private isInValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 401
    const-string v2, "\\w+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 402
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 403
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private showProgressDialog()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 392
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 689
    :goto_0
    return-void

    .line 620
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabTopView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabTopView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 628
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 629
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 630
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 632
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 633
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 635
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 636
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->clickSinaAttentionButton()V

    goto :goto_0

    .line 639
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabTopView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabTopView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 646
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaTabLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 647
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSinaWeiTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 648
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mTencentWeiboTabText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 649
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 650
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 651
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 652
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    .line 653
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAdapterDataCollection:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 654
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mUserListAdapter:Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/UserListAdapter;->notifyDataSetChanged()V

    .line 655
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->clickTencentAttentionButton()V

    goto/16 :goto_0

    .line 658
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 660
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 661
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 664
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    if-ne v0, v1, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->clickSinaRecentlyAtButton()V

    goto/16 :goto_0

    .line 667
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->clickTencentRecentlyAtButton()V

    goto/16 :goto_0

    .line 671
    :sswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mSearchInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 674
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 675
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mAttentionPeopleBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mRecentlyAtBottomLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setListRefreshAble(Z)V

    .line 678
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mCurrentPlatform:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/RecentlyAtUsersManager$WeiboPlatform;

    if-ne v0, v1, :cond_1

    .line 679
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->clickSinaAttentionButton()V

    goto/16 :goto_0

    .line 681
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->clickTencentAttentionButton()V

    goto/16 :goto_0

    .line 685
    :sswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->mContentList:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setVisibility(I)V

    .line 686
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->clickOkButton()V

    goto/16 :goto_0

    .line 618
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
    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->requestWindowFeature(I)Z

    .line 246
    const v0, 0x7f040175

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->setContentView(I)V

    .line 247
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->initView()V

    .line 248
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->initData()V

    .line 249
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 250
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 613
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 614
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 607
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 608
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 609
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 601
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 602
    return-void
.end method
