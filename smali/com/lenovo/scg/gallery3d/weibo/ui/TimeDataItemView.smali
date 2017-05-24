.class public Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
.super Landroid/widget/RelativeLayout;
.source "TimeDataItemView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final LAYOUT_FRIEND_OTHER:I = 0x1

.field public static final LAYOUT_FRIEND_SELF:I = 0x2

.field public static final LAYOUT_TIME_MAIN:I = 0x0

.field private static final MAX_COMMENT_COUNT:I = 0x5

.field public static final SCROLL_SPEED_MIN:I = 0x6


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mArrItemsRef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnComment:Landroid/widget/ImageButton;

.field private mBtnComment2:Landroid/widget/ImageButton;

.field private mBtnDel:Landroid/widget/ImageButton;

.field private mBtnMoreComment:Landroid/widget/Button;

.field private mBtnRepost:Landroid/widget/ImageButton;

.field private mBtnRepost2:Landroid/widget/ImageButton;

.field private mBtnVote:Landroid/widget/ImageButton;

.field private mBtnVote2:Landroid/widget/ImageButton;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

.field private mHeadClickListener:Landroid/view/View$OnClickListener;

.field private mHeadHiColor:I

.field private mImgHead:Landroid/widget/ImageView;

.field public mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

.field private mLayoutType:I

.field private mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

.field private mListenerGetComment:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

.field private mLlAllHead:Landroid/widget/LinearLayout;

.field private mRlComments:Landroid/widget/RelativeLayout;

.field private mRlHasDel:Landroid/widget/RelativeLayout;

.field private mRlHeadInfo:Landroid/widget/RelativeLayout;

.field private mRlImgHolder:Landroid/widget/RelativeLayout;

.field private mRlNoDel:Landroid/widget/RelativeLayout;

.field private mRlTimeSource:Landroid/widget/RelativeLayout;

.field private mTvCommentContent:Landroid/widget/TextView;

.field private mTvCommentCount:Landroid/widget/TextView;

.field private mTvCommentCount2:Landroid/widget/TextView;

.field private mTvCommentUserName:Landroid/widget/TextView;

.field private mTvContent:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private mTvRepostCount:Landroid/widget/TextView;

.field private mTvRepostCount2:Landroid/widget/TextView;

.field private mTvSource:Landroid/widget/TextView;

.field private mTvSource2:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;

.field private mTvTime2:Landroid/widget/TextView;

.field private mTvVoteCount:Landroid/widget/TextView;

.field private mTvVoteCount2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    .line 102
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 103
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 104
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    .line 107
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHeadHiColor:I

    .line 109
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 110
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    .line 701
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHeadClickListener:Landroid/view/View$OnClickListener;

    .line 751
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListenerGetComment:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

    .line 923
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    .line 102
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 103
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 104
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    .line 107
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHeadHiColor:I

    .line 109
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 110
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    .line 701
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHeadClickListener:Landroid/view/View$OnClickListener;

    .line 751
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListenerGetComment:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

    .line 923
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    .line 119
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "nStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    .line 102
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 103
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 104
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    .line 107
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHeadHiColor:I

    .line 109
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 110
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    .line 701
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHeadClickListener:Landroid/view/View$OnClickListener;

    .line 751
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListenerGetComment:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

    .line 923
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHandler:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$GetHeadPicHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/widget/ImageView;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->loadHeadImageFromNet(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    return-object v0
.end method

.method private getCommentsUrl(J)Ljava/lang/String;
    .locals 7
    .param p1, "lStatusId"    # J

    .prologue
    .line 738
    new-instance v1, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v1}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 739
    .local v1, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    .line 740
    .local v0, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "sAccessToken":Ljava/lang/String;
    const-string v4, "access_token"

    invoke-virtual {v1, v4, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v4, "id"

    invoke-virtual {v1, v4, p1, p2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 744
    const-string v4, "count"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 745
    const-string v3, "https://api.weibo.com/2/comments/show.json"

    .line 747
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 748
    return-object v3
.end method

.method private getHeadSpaceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 685
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v2, v4, [C

    .line 686
    .local v2, "namechar":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v5, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 687
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 688
    .local v1, "nameLenth":I
    const-string v3, "   "

    .line 689
    .local v3, "nullString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 690
    aget-char v4, v2, v0

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->checkType(C)Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->CHINESE:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    if-ne v4, v5, :cond_0

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    aget-char v4, v2, v0

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->checkType(C)Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    move-result-object v4

    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;->DELIMITER:Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils$CharType;

    if-ne v4, v5, :cond_1

    .line 693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 695
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 698
    :cond_2
    return-object v3
.end method

.method private getRelativeTime(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Ljava/lang/CharSequence;
    .locals 12
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 718
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 719
    .local v2, "lNow":J
    new-instance v8, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 720
    .local v8, "dt":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 721
    .local v0, "lOld":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 722
    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v7

    .line 725
    .local v7, "dateValue":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 734
    .end local v0    # "lOld":J
    .end local v2    # "lNow":J
    .end local v7    # "dateValue":Ljava/lang/CharSequence;
    .end local v8    # "dt":Ljava/util/Date;
    :goto_0
    return-object v10

    .line 727
    .restart local v0    # "lOld":J
    .restart local v2    # "lNow":J
    .restart local v8    # "dt":Ljava/util/Date;
    :cond_0
    const-string/jumbo v4, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 728
    .local v10, "sTime":Ljava/lang/String;
    goto :goto_0

    .line 730
    .end local v0    # "lOld":J
    .end local v2    # "lNow":J
    .end local v8    # "dt":Ljava/util/Date;
    .end local v10    # "sTime":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 731
    .local v9, "e":Ljava/lang/Exception;
    const-string v4, "getRelativeTime error: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 734
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCreatedTime()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private isBusy()Z
    .locals 6

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "bBusy":Z
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 247
    :goto_0
    return v3

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getScrollState()I

    move-result v2

    .line 230
    .local v2, "nState":I
    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v0

    .line 247
    goto :goto_0

    .line 232
    :pswitch_0
    const/4 v0, 0x0

    .line 233
    goto :goto_1

    .line 235
    :pswitch_1
    const/4 v0, 0x1

    .line 236
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getSpeed()D

    move-result-wide v4

    double-to-int v1, v4

    .line 237
    .local v1, "nSpeed":I
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 238
    const/4 v0, 0x0

    goto :goto_1

    .line 242
    .end local v1    # "nSpeed":I
    :pswitch_2
    const/4 v0, 0x0

    .line 243
    goto :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private loadHeadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "imgView"    # Landroid/widget/ImageView;

    .prologue
    .line 836
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->isFileLoading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    :goto_0
    return-void

    .line 841
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->setFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 861
    .local v0, "readPictureListener":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    goto :goto_0
.end method

.method private loadHeadImageFromFileCache(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "imgView"    # Landroid/widget/ImageView;

    .prologue
    .line 815
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->isFileLoading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    :goto_0
    return-void

    .line 820
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->setFileLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .local v0, "readPictureListener":Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFileAsync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)V

    goto :goto_0
.end method

.method private loadHeadImageFromNet(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "childname"    # Ljava/lang/String;
    .param p3, "imgView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v6, 0x2

    .line 866
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v3, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->isNetLoading(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 921
    :goto_0
    return-void

    .line 870
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v3, p2, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->setNetLoadingStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v3, "local file is not exist, will load from net name=%s url=%s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v1

    .line 874
    .local v1, "netPool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v2

    .line 875
    .local v2, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 876
    sget-object v3, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    invoke-virtual {v2, v3, p1, v6}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 877
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 920
    .local v0, "netListener":Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private prepareComments(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 11
    .param p1, "itemCur"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 485
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    .line 486
    .local v1, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v6

    .line 487
    .local v6, "lStatusId":J
    invoke-virtual {v1, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeStatusComments(J)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    move-result-object v4

    .line 488
    .local v4, "itemComments":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 503
    :cond_0
    return-void

    .line 491
    :cond_1
    iget-object v8, v4, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 492
    .local v5, "size":I
    if-lez v5, :cond_0

    .line 496
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 497
    iget-object v8, v4, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 498
    .local v3, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    .local v0, "bmpHead":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 500
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->loadHeadImageFromFileCache(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 496
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private prepareHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 662
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "sUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "sName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 665
    .local v0, "bmpHead":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 666
    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->loadHeadImageFromFileCache(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 668
    :cond_0
    return-void
.end method

.method private showComments(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V
    .locals 24
    .param p1, "itemCur"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p2, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlComments:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 508
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v5

    .line 509
    .local v5, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v12

    .line 510
    .local v12, "lStatusId":J
    invoke-virtual {v5, v12, v13}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeStatusComments(J)Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    move-result-object v11

    .line 511
    .local v11, "itemComments":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->showEmptyComment(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 512
    if-nez v11, :cond_1

    .line 515
    new-instance v11, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;

    .end local v11    # "itemComments":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;)V

    .line 516
    .restart local v11    # "itemComments":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;
    invoke-virtual {v5, v12, v13, v11}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putTimeStatusComments(JLcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;)V

    .line 518
    sget-object v20, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v16

    .line 519
    .local v16, "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v20, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v21, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v19

    .line 520
    .local v19, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 521
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getCommentsUrl(J)Ljava/lang/String;

    move-result-object v17

    .line 522
    .local v17, "sCommentsUrl":Ljava/lang/String;
    sget-object v20, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_STRING:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/16 v21, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListenerGetComment:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 609
    .end local v16    # "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    .end local v17    # "sCommentsUrl":Ljava/lang/String;
    .end local v19    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, v11, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 531
    iget-object v0, v11, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 532
    .local v18, "size":I
    if-gtz v18, :cond_2

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v20

    if-lez v20, :cond_0

    .line 535
    sget-object v20, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v16

    .line 536
    .restart local v16    # "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v20, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v21, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v19

    .line 537
    .restart local v19    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getCommentsUrl(J)Ljava/lang/String;

    move-result-object v17

    .line 539
    .restart local v17    # "sCommentsUrl":Ljava/lang/String;
    sget-object v20, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_STRING:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/16 v21, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListenerGetComment:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 541
    const-string/jumbo v20, "reget comment occurred !"

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    .end local v16    # "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    .end local v17    # "sCommentsUrl":Ljava/lang/String;
    .end local v19    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    :cond_2
    const/16 v20, 0x5

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 547
    sget-object v20, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v16

    .line 548
    .restart local v16    # "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    sget-object v20, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v21, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v19

    .line 549
    .restart local v19    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->addNetTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatusesId()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getCommentsUrl(J)Ljava/lang/String;

    move-result-object v17

    .line 551
    .restart local v17    # "sCommentsUrl":Ljava/lang/String;
    sget-object v20, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_STRING:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    const/16 v21, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListenerGetComment:Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$OnGetCommentListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->runTask(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;Ljava/lang/Object;)V

    .line 554
    const-string/jumbo v20, "reget comment occurred,size < itemCur.getCommentsCount() !"

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    .end local v16    # "pool":Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    .end local v17    # "sCommentsUrl":Ljava/lang/String;
    .end local v19    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlComments:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v14

    .line 560
    .local v14, "nCnt":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_4

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 560
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 563
    :cond_4
    const/4 v8, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 564
    iget-object v0, v11, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 565
    .local v10, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 566
    .local v9, "imgHead":Landroid/widget/ImageView;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 569
    const v20, 0x7f100004

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHeadClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 573
    .local v4, "bmpHead":Landroid/graphics/Bitmap;
    if-nez v4, :cond_5

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultCmtUserBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 575
    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->loadHeadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 563
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 577
    :cond_5
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 581
    .end local v4    # "bmpHead":Landroid/graphics/Bitmap;
    .end local v9    # "imgHead":Landroid/widget/ImageView;
    .end local v10    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    :cond_6
    iget v15, v11, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->nPos:I

    .line 582
    .local v15, "nPos":I
    if-ltz v15, :cond_7

    move/from16 v0, v18

    if-lt v15, v0, :cond_8

    .line 583
    :cond_7
    const/4 v15, 0x0

    .line 585
    :cond_8
    iget-object v0, v11, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView$CommentsItem;->arrComments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 586
    .local v6, "di":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentUserName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentContent:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getHeadSpaceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrContent()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/lenovo/scg/gallery3d/weibo/util/ParseContent4Smile;->parseText(Ljava/lang/String;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v14

    .line 600
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v14, :cond_0

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 602
    .restart local v9    # "imgHead":Landroid/widget/ImageView;
    if-ne v15, v8, :cond_9

    .line 603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHeadHiColor:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 600
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 592
    .end local v9    # "imgHead":Landroid/widget/ImageView;
    :catch_0
    move-exception v7

    .line 593
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 605
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "imgHead":Landroid/widget/ImageView;
    :cond_9
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_6
.end method

.method private showCommentsDefault(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "itemCur"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p2, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlComments:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 422
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->showEmptyComment(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 423
    return-void
.end method

.method private showEmptyComment(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 10
    .param p1, "itemCur"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    const/4 v6, 0x5

    const/4 v9, 0x0

    .line 612
    if-nez p1, :cond_1

    .line 646
    :cond_0
    return-void

    .line 613
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v4

    .line 614
    .local v4, "nCount":I
    if-lez v4, :cond_0

    .line 616
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 617
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlComments:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 618
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 619
    .local v3, "nCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 620
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_2
    if-le v4, v6, :cond_3

    .line 624
    .local v6, "size":I
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_4

    .line 625
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 626
    .local v2, "imgHead":Landroid/widget/ImageView;
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultCmtUserBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2    # "imgHead":Landroid/widget/ImageView;
    .end local v6    # "size":I
    :cond_3
    move v6, v4

    .line 623
    goto :goto_1

    .line 630
    .restart local v6    # "size":I
    :cond_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentUserName:Landroid/widget/TextView;

    const-string v8, " "

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0757

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 633
    .local v5, "sLoading":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentContent:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_0

    .line 636
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 637
    .restart local v2    # "imgHead":Landroid/widget/ImageView;
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private showFriendHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V
    .locals 6
    .param p1, "itemCur"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p2, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "sUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "sName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getCacheHead(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 675
    .local v0, "bmpHead":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 676
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgHead:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 681
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgHead:Landroid/widget/ImageView;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultHeadBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 679
    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->loadHeadImageFromFile(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private showFriendHeadDefault(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "itemCur"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p2, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgHead:Landroid/widget/ImageView;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getDefaultHeadBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 659
    return-void
.end method


# virtual methods
.method public animateItem()V
    .locals 3

    .prologue
    .line 416
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f05001d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 417
    .local v0, "rotateAnimation":Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 418
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 179
    const v0, 0x7f100a5c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHeadInfo:Landroid/widget/RelativeLayout;

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHeadInfo:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a31

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgHead:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHeadInfo:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a33

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvName:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHeadInfo:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvSource:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHeadInfo:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a34

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvTime:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f100a5d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlImgHolder:Landroid/widget/RelativeLayout;

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlImgHolder:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a42

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    .line 188
    const v0, 0x7f100a5e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlTimeSource:Landroid/widget/RelativeLayout;

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlTimeSource:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a5f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvTime2:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlTimeSource:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a60

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvSource2:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f100a15

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvContent:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f100a61

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlComments:Landroid/widget/RelativeLayout;

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlComments:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a63

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLlAllHead:Landroid/widget/LinearLayout;

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlComments:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a69

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnMoreComment:Landroid/widget/Button;

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlComments:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a6e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentUserName:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlComments:Landroid/widget/RelativeLayout;

    const v1, 0x7f100a6d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentContent:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f100a73

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnVote:Landroid/widget/ImageButton;

    .line 202
    const v0, 0x7f100a74

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvVoteCount:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f100a78

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnRepost:Landroid/widget/ImageButton;

    .line 204
    const v0, 0x7f100a79

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvRepostCount:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f100a7d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnComment:Landroid/widget/ImageButton;

    .line 206
    const v0, 0x7f100a7e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentCount:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f100a82

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnVote2:Landroid/widget/ImageButton;

    .line 209
    const v0, 0x7f100a83

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvVoteCount2:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f100a87

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnRepost2:Landroid/widget/ImageButton;

    .line 211
    const v0, 0x7f100a88

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvRepostCount2:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f100a8c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnComment2:Landroid/widget/ImageButton;

    .line 213
    const v0, 0x7f100a8d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentCount2:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f100a8f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnDel:Landroid/widget/ImageButton;

    .line 217
    const v0, 0x7f100a7f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHasDel:Landroid/widget/RelativeLayout;

    .line 218
    const v0, 0x7f100a70

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlNoDel:Landroid/widget/RelativeLayout;

    .line 220
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mHeadHiColor:I

    .line 223
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 10
    .param p1, "stateNow"    # I

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 256
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v9, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->canNofity()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 263
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getFirstVisibleItem()I

    move-result v5

    .line 264
    .local v5, "nFirst":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getVisibleCount()I

    move-result v6

    .line 265
    .local v6, "nVisibleCount":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    .line 266
    .local v0, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    add-int/lit8 v9, v5, -0x1

    if-ge v3, v9, :cond_2

    .line 267
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearAnimationFlag(I)V

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 269
    :cond_2
    add-int v9, v5, v6

    add-int/lit8 v7, v9, 0x1

    .line 270
    .local v7, "start":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 271
    .local v1, "end":I
    move v3, v7

    :goto_2
    if-ge v3, v1, :cond_3

    .line 272
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearAnimationFlag(I)V

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 275
    :cond_3
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 279
    .end local v0    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v5    # "nFirst":I
    .end local v6    # "nVisibleCount":I
    .end local v7    # "start":I
    :cond_4
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getFirstVisibleItem()I

    move-result v5

    .line 280
    .restart local v5    # "nFirst":I
    if-nez v5, :cond_0

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, "firstView":Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getChildCount()I

    move-result v4

    .line 283
    .local v4, "nCnt":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 284
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v9, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 285
    .local v8, "vChild":Landroid/view/View;
    instance-of v9, v8, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    if-eqz v9, :cond_6

    move-object v2, v8

    .line 286
    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;

    .line 290
    .end local v8    # "vChild":Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_0

    .line 291
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->setDataItemDirectly(I)V

    goto :goto_0

    .line 283
    .restart local v8    # "vChild":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public prepareImage(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->prepareComments(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->prepareHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V

    .line 412
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->prepareImage(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Z

    move-result v0

    return v0
.end method

.method public setDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V
    .locals 5
    .param p1, "itemCur"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;>;"
    const/4 v4, 0x2

    const v3, 0x7f100006

    .line 342
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    .line 344
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    if-nez v1, :cond_3

    .line 347
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvSource:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvTime:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getRelativeTime(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :cond_2
    :goto_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    if-ne v1, v4, :cond_6

    .line 360
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvVoteCount2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmAttitudesCount()I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvRepostCount2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRepostsCount()I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentCount2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnComment2:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 364
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnRepost2:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 365
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnDel:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 375
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setTag(Ljava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnMoreComment:Landroid/widget/Button;

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2, p1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 377
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgHead:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 379
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 380
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setOnScrollStateChangedListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;)V

    .line 381
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->isBusy()Z

    move-result v0

    .line 382
    .local v0, "bBusy":Z
    if-eqz v0, :cond_7

    .line 384
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->showCommentsDefault(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->showFriendHeadDefault(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    .line 396
    :goto_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setTag(ILjava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 349
    .end local v0    # "bBusy":Z
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 350
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvSource2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvTime2:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getRelativeTime(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 352
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    if-ne v1, v4, :cond_5

    .line 353
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvSource2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvTime2:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getRelativeTime(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 356
    :cond_5
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 368
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvVoteCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmAttitudesCount()I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvRepostCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRepostsCount()I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboUtils;->formatWeiboNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnComment:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 372
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnRepost:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 390
    .restart local v0    # "bBusy":Z
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->showComments(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    .line 392
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->showFriendHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    goto/16 :goto_3
.end method

.method public setDataItemDirectly(I)V
    .locals 4
    .param p1, "nPos"    # I

    .prologue
    const v3, 0x7f100006

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 304
    .local v0, "itemCur":Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    if-nez v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvSource:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getRelativeTime(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvVoteCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmAttitudesCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvRepostCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getRepostsCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvCommentCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getCommentsCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnComment:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 324
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnRepost:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 325
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setTag(Ljava/lang/Object;)V

    .line 326
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnMoreComment:Landroid/widget/Button;

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 327
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgHead:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnDel:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 334
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->showFriendHead(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    .line 336
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setTag(ILjava/lang/Object;)V

    .line 337
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mArrItemsRef:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Ljava/util/ArrayList;I)V

    goto/16 :goto_0

    .line 309
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 310
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvSource2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvTime2:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getRelativeTime(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 312
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 313
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvSource2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mTvTime2:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->getRelativeTime(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 316
    :cond_5
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public setLayoutType(I)V
    .locals 4
    .param p1, "nLayoutType"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 134
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    .line 135
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHeadInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlTimeSource:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHasDel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlNoDel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHeadInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlTimeSource:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHasDel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlNoDel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mLayoutType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHeadInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlTimeSource:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlHasDel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mRlNoDel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 157
    :cond_3
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnComment:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnRepost:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnComment2:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnRepost2:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgHead:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnMoreComment:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mBtnDel:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method public setParentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mImgPics:Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/TimeDataItemView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/ImageViewGrid;->setParentAdapter(Landroid/widget/BaseAdapter;)V

    .line 131
    return-void
.end method
