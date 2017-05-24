.class public Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
.super Landroid/app/Activity;
.source "WhiteListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final KEY_SHIELD_USER:Ljava/lang/String; = "uids"

.field private static final LOAD_DATA:I = 0x0

.field private static final LOAD_NOT_ALL:I = 0x2

.field private static final LOAD_SHIELD:I = 0x1

.field private static final MSG_GET_RESULT_FRIENDS_LIST_FAILED:I = 0x1

.field private static final MSG_GET_RESULT_FRIENDS_LIST_SUCCESS:I = 0x0

.field private static final MSG_GET_RESULT_SHIELD_LIST_FAILED:I = 0x4

.field private static final MSG_GET_RESULT_SHIELD_LIST_SUCCESS:I = 0x3

.field private static final MSG_UPDATE_FRIENDS_LIST_FAILED:I = 0x7

.field private static final MSG_UPDATE_FRIENDS_LIST_SUCCESS:I = 0x6

.field private static final MSG_UPDATE_SHIELD_MERGED_SUCCESS:I = 0x5

.field private static final MSG_UPDATE_SHIELD_SUCCESS:I = 0x2

.field private static final QUERYSTRING:Ljava/lang/String; = "querystring"

.field private static final RATE_GET_FROM_NET:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WhiteListActivity"

.field public static final WHITELIST_SHIELD_UIDS_PREFERENCES_NAME:Ljava/lang/String; = "weibo_whitelist_shield_uids"


# instance fields
.field private mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private mAccountFilterHeaderContainer:Landroid/view/View;

.field private mAccountFilterHeaderView:Landroid/widget/TextView;

.field private mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

.field private mAllIsClose:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDividerTextView:Landroid/widget/TextView;

.field private mDividerView:Landroid/view/View;

.field private mFilterArrow:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSearchMode:Z

.field private mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

.field private mLoaderStarted:Z

.field private mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShieldArrow:Landroid/widget/ImageView;

.field private mShieldIsClose:Z

.field private final mShieldLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mShieldLoaderStarted:Z

.field private mShieldUserItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;"
        }
    .end annotation
.end field

.field private mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

.field private mUpdateView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$ShieldLoaderListener;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 709
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->cancelDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateFilterHeaderDividerCount(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoaderShield(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateHeaderDividerCount(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->transferCursorToItem(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoader(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mIsSearchMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getItem(I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;JZI)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateShield(JZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getItemForMergedAdapter(I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;JZI)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateShieldForMergedAdapter(JZI)V

    return-void
.end method

.method private cancelDialog()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 702
    :cond_0
    return-void
.end method

.method private clearAdapterItemCacheBitmap()V
    .locals 12

    .prologue
    .line 1147
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-eqz v7, :cond_1

    .line 1148
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->getCount()I

    move-result v0

    .line 1149
    .local v0, "count":I
    if-eqz v0, :cond_1

    .line 1150
    const-string v7, "WhiteListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clearAdapterItemCacheBitmap, mAllAdapter count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    .line 1152
    .local v1, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1153
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v7, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    .line 1154
    .local v6, "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getPhotoUrl()Ljava/lang/String;

    move-result-object v5

    .line 1155
    .local v5, "photourl":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getScreenName()Ljava/lang/String;

    move-result-object v4

    .line 1156
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v5, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearUserHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1158
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "photourl":Ljava/lang/String;
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->clearDataCollection()V

    .line 1162
    .end local v0    # "count":I
    .end local v1    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v2    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-eqz v7, :cond_3

    .line 1163
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->getCount()I

    move-result v0

    .line 1164
    .restart local v0    # "count":I
    if-eqz v0, :cond_3

    .line 1165
    const-string v7, "WhiteListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clearAdapterItemCacheBitmap, mShiledAdapter count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    .line 1168
    .restart local v1    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1169
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v7, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    .line 1170
    .restart local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getPhotoUrl()Ljava/lang/String;

    move-result-object v5

    .line 1171
    .restart local v5    # "photourl":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getScreenName()Ljava/lang/String;

    move-result-object v4

    .line 1172
    .restart local v4    # "name":Ljava/lang/String;
    invoke-virtual {v1, v5, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->clearUserHead(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v7, "WhiteListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clearAdapterItemCacheBitmap, uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getUid()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1177
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "photourl":Ljava/lang/String;
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    :cond_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->clearDataCollection()V

    .line 1183
    .end local v0    # "count":I
    .end local v1    # "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    .end local v3    # "j":I
    :cond_3
    return-void
.end method

.method private clearWhiteListDataFromDB()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1134
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WhiteList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1135
    .local v0, "count":I
    const-string v1, "WhiteListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearWhiteListDataFromDB, delete count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    if-ltz v0, :cond_0

    .line 1137
    const-string v1, "WhiteListActivity"

    const-string v2, "clearWhiteListDataFromDB, delete success!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :goto_0
    return-void

    .line 1139
    :cond_0
    const-string v1, "WhiteListActivity"

    const-string v2, "clearWhiteListDataFromDB, delete failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createShieldAdapter()V
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    .line 339
    return-void
.end method

.method private getFilterHeaderDivider()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0401b5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderContainer:Landroid/view/View;

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderContainer:Landroid/view/View;

    const v1, 0x7f100aa8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderView:Landroid/widget/TextView;

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderView:Landroid/widget/TextView;

    const v1, 0x7f0f0764

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderContainer:Landroid/view/View;

    const v1, 0x7f100aa9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mFilterArrow:Landroid/widget/ImageView;

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mFilterArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    return-void
.end method

.method private getHeaderDivider()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 313
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerView:Landroid/view/View;

    .line 316
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerView:Landroid/view/View;

    const v2, 0x7f100aad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerTextView:Landroid/widget/TextView;

    .line 317
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerTextView:Landroid/widget/TextView;

    const v2, 0x7f0f0763

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 320
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerView:Landroid/view/View;

    const v2, 0x7f100aae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 321
    .local v0, "text2":Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerView:Landroid/view/View;

    const v2, 0x7f100aaf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldArrow:Landroid/widget/ImageView;

    .line 324
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .end local v0    # "text2":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private getItem(I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x0

    .line 502
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    goto :goto_0
.end method

.method private getItemForMergedAdapter(I)Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    goto :goto_0
.end method

.method private getMergedAdatper()V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/BaseAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    goto :goto_0
.end method

.method private static getNumberInfo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    .locals 3
    .param p0, "res"    # Ljava/lang/String;

    .prologue
    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sina: getNumberInfo: res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 980
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;

    .line 981
    .local v0, "info":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    return-object v0
.end method

.method private getToken()V
    .locals 1

    .prologue
    .line 682
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 684
    return-void
.end method

.method private getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 860
    const/4 v1, 0x0

    .line 861
    .local v1, "s_uid":Ljava/lang/String;
    const-string/jumbo v4, "super_gallery_settings"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 863
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "weibo_uid"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 865
    const-string v4, "WhiteListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUid, get SharedPreferences\'s uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 867
    const-string v4, "WhiteListActivity"

    const-string v5, "getUid, SharedPreferences\'s uid is empty, get net uid!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-static {p1, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getUserUid(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;)Ljava/lang/String;

    move-result-object v1

    .line 870
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;

    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;

    .line 871
    .local v3, "uid":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;->getUid()Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 880
    .end local v3    # "uid":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "weibo_uid"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 882
    :cond_0
    return-object v1

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Lcom/weibo/sdk/android/WeiboException;
    const-string v4, "WhiteListActivity"

    const-string v5, "WeiboException when getUid!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {v0}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 644
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    if-nez v1, :cond_0

    .line 653
    :goto_0
    return-void

    .line 649
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 651
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getToken()V

    .line 518
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 520
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 521
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 249
    const v3, 0x7f100a9d

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 250
    .local v1, "return_btn":Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v3, 0x7f100aa0

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 253
    .local v2, "searchView":Landroid/widget/EditText;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 254
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 256
    const v3, 0x7f100a9e

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mUpdateView:Landroid/widget/TextView;

    .line 257
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mUpdateView:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 258
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mUpdateView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v3, 0x7f100aa3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .line 265
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setIsRefresh(Z)V

    .line 266
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 271
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->hideSoftKeyboard()V

    .line 273
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->createShieldAdapter()V

    .line 275
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getFilterHeaderDivider()V

    .line 277
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 278
    .local v0, "headerContainer":Landroid/widget/FrameLayout;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getHeaderDivider()V

    .line 279
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 280
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 282
    new-instance v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    .line 284
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getMergedAdatper()V

    .line 286
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 288
    const v3, 0x7f0f0757

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->showProgressDialog(I)V

    .line 289
    return-void
.end method

.method private insertAndUpdateToDB(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 998
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 999
    const-string v5, "WhiteListActivity"

    const-string v6, "insertAndUpdateToDB, mShieldUserItems=null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    .line 1004
    .local v3, "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 1005
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldUserItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    .line 1006
    .local v2, "shieldUser":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getUid()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getUid()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 1007
    const-string v5, "WhiteListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is shield user, uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getUid()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getScreenName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->setSelected(Z)V

    goto :goto_1

    .line 1014
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "shieldUser":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1015
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "user_uid"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1016
    const-string/jumbo v5, "nick"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string/jumbo v5, "portrait"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getPhotoUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v5, "isshield"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->isSelected()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1019
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WhiteList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 1021
    .end local v3    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    return-void
.end method

.method private insertToDB(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    .line 987
    .local v1, "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 988
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "user_uid"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 989
    const-string/jumbo v3, "nick"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string/jumbo v3, "portrait"

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v3, "isshield"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 993
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WhiteList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 995
    .end local v1    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private sendMassage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 705
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 706
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 707
    return-void
.end method

.method private setSearchMode(Z)V
    .locals 0
    .param p1, "search"    # Z

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mIsSearchMode:Z

    .line 545
    return-void
.end method

.method private setToExcludeShieldListView()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 551
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 553
    return-void
.end method

.method private setToIncludeStarredListView()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 559
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 560
    return-void
.end method

.method private showProgressDialog(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 688
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 693
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 694
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 695
    return-void
.end method

.method private startLoader(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 171
    const-string v0, "WhiteListActivity"

    const-string/jumbo v1, "startLoader!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mLoaderStarted:Z

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, p1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mLoaderStarted:Z

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2, p1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 177
    return-void
.end method

.method private startLoaderShield(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldLoaderStarted:Z

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldLoaderStarted:Z

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 186
    return-void
.end method

.method private transferCursorToItem(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1025
    const/4 v6, 0x0

    .line 1027
    .local v6, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    if-eqz p1, :cond_1

    .line 1029
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1030
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .restart local v6    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1034
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1035
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1036
    .local v8, "uuid":J
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1037
    .local v3, "name":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, "photourl":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v7, :cond_0

    move v2, v7

    .line 1041
    .local v2, "isShield":Z
    :goto_1
    new-instance v5, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    invoke-direct {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;-><init>()V

    .line 1042
    .local v5, "sinauser":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    invoke-virtual {v5, v8, v9}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->setUid(J)V

    .line 1043
    invoke-virtual {v5, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->setScreenName(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->setPhotoUrl(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v5, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->setSelected(Z)V

    .line 1046
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1034
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isShield":Z
    .end local v5    # "sinauser":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    :cond_0
    move v2, v10

    .line 1038
    goto :goto_1

    .line 1054
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "photourl":Ljava/lang/String;
    .end local v8    # "uuid":J
    :cond_1
    return-object v6
.end method

.method private udpateShield(JZ)I
    .locals 7
    .param p1, "uuid"    # J
    .param p3, "isshield"    # Z

    .prologue
    const/4 v6, 0x0

    .line 455
    sget-object v3, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WhiteList;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/shield/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 457
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 458
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "isshield"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 459
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, "count":I
    const-string v3, "WhiteListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateShield, result count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v0
.end method

.method private updateFilterArrow()V
    .locals 2

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllIsClose:Z

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mFilterArrow:Landroid/widget/ImageView;

    const v1, 0x7f0209e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 840
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mFilterArrow:Landroid/widget/ImageView;

    const v1, 0x7f0209e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateFilterHeaderDividerCount(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccountFilterHeaderView:Landroid/widget/TextView;

    const v1, 0x7f0f0764

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateHeaderDividerCount(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mDividerTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0763

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateShield(JZI)V
    .locals 3
    .param p1, "uuid"    # J
    .param p3, "isshield"    # Z
    .param p4, "position"    # I

    .prologue
    .line 467
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-nez v1, :cond_1

    .line 468
    const-string v1, "WhiteListActivity"

    const-string/jumbo v2, "updateShield, mAllAdapter = null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->udpateShield(JZ)I

    move-result v0

    .line 476
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 477
    const-string v1, "WhiteListActivity"

    const-string/jumbo v2, "udpateShield is ok!! to update view!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v1, p4, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->updateShield(IZ)V

    goto :goto_0
.end method

.method private updateShieldArrow()V
    .locals 2

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldIsClose:Z

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldArrow:Landroid/widget/ImageView;

    const v1, 0x7f0209e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 851
    :goto_0
    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldArrow:Landroid/widget/ImageView;

    const v1, 0x7f0209e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateShieldForMergedAdapter(JZI)V
    .locals 3
    .param p1, "uuid"    # J
    .param p3, "isshield"    # Z
    .param p4, "position"    # I

    .prologue
    .line 483
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    if-nez v1, :cond_1

    .line 484
    const-string v1, "WhiteListActivity"

    const-string/jumbo v2, "updateShieldForMergedAdapter, mMergedAdapter = null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->udpateShield(JZ)I

    move-result v0

    .line 490
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 491
    const-string v1, "WhiteListActivity"

    const-string/jumbo v2, "updateShieldForMergedAdapter is ok!! to update view!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    invoke-virtual {v1, p4, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->updateShield(IZ)V

    goto :goto_0
.end method

.method private updateShieldListFromDB()Z
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 658
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v6, "arrUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WhiteList;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string/jumbo v3, "user_uid"

    aput-object v3, v2, v12

    const-string v3, "isshield=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 663
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 664
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 667
    .local v7, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 668
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 669
    .local v10, "uuid":J
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 670
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 673
    .end local v7    # "count":I
    .end local v9    # "i":I
    .end local v10    # "uuid":J
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->updateSinaUserIds(Ljava/util/ArrayList;)V

    .line 678
    return v13
.end method

.method private updateUpdateViewVisiable()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 564
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mUpdateView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 568
    :cond_0
    const v1, 0x7f100a9f

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 570
    .local v0, "divider":Landroid/view/View;
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mIsSearchMode:Z

    if-eqz v1, :cond_1

    .line 571
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mUpdateView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mUpdateView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 630
    const-string v0, "WhiteListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterTextChanged, s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 624
    const-string v0, "WhiteListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged, s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void
.end method

.method public getFriendsListFromNet(ZZ)Ljava/util/List;
    .locals 24
    .param p1, "isSave"    # Z
    .param p2, "isUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    const-string v21, "WhiteListActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getFriendsListFromNet, isSave="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", isUpdate="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 890
    .local v8, "gson":Lcom/google/gson/Gson;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    new-instance v21, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v13

    .line 895
    .local v13, "listType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 896
    .local v19, "uidStr":Ljava/lang/String;
    const-string v21, "WhiteListActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getFriendsListFromNet, uuid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v14, 0x0

    .line 899
    .local v14, "next_cursor":I
    const/16 v18, 0x0

    .line 900
    .local v18, "total_number":I
    const/16 v17, 0x1

    .line 901
    .local v17, "times":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 902
    const/4 v12, 0x0

    .line 904
    .local v12, "jsonData":Ljava/lang/String;
    :try_start_0
    const-string v21, "200"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getFriendsList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/Oauth2AccessToken;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 917
    if-nez v12, :cond_2

    .line 918
    const-string v21, "WhiteListActivity"

    const-string v22, "jsonData = null!!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    if-nez p2, :cond_1

    .line 920
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V

    .line 924
    :goto_1
    const/16 v20, 0x0

    .line 974
    .end local v12    # "jsonData":Ljava/lang/String;
    .end local v20    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    :goto_2
    return-object v20

    .line 906
    .restart local v12    # "jsonData":Ljava/lang/String;
    .restart local v20    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    :catch_0
    move-exception v6

    .line 907
    .local v6, "e":Lcom/weibo/sdk/android/WeiboException;
    const-string v21, "WhiteListActivity"

    const-string v22, "WeiboException when getFriendsListFromNet!!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {v6}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 909
    if-nez p2, :cond_0

    .line 910
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V

    .line 914
    :goto_3
    const/16 v20, 0x0

    goto :goto_2

    .line 912
    :cond_0
    const/16 v21, 0x7

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V

    goto :goto_3

    .line 922
    .end local v6    # "e":Lcom/weibo/sdk/android/WeiboException;
    :cond_1
    const/16 v21, 0x7

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V

    goto :goto_1

    .line 927
    :cond_2
    const-string v21, "[{"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 928
    .local v15, "start":I
    const-string/jumbo v21, "}]"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v7, v21, 0x2

    .line 929
    .local v7, "end":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    .line 930
    const-string v21, "WhiteListActivity"

    const-string/jumbo v22, "start = -1!!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    if-nez p2, :cond_3

    .line 932
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V

    .line 936
    :goto_4
    const/16 v20, 0x0

    goto :goto_2

    .line 934
    :cond_3
    const/16 v21, 0x7

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V

    goto :goto_4

    .line 938
    :cond_4
    invoke-virtual {v12, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 939
    .local v11, "json":Ljava/lang/String;
    invoke-virtual {v8, v11, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 940
    .local v5, "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    const-string v21, "WhiteListActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "c_users count="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 944
    add-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 945
    .local v16, "tail":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "{"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getNumberInfo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;

    move-result-object v10

    .line 947
    .local v10, "info":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    if-nez v18, :cond_5

    .line 948
    iget v0, v10, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->total_number:I

    move/from16 v18, v0

    .line 949
    move/from16 v0, v18

    div-int/lit16 v0, v0, 0xc8

    move/from16 v22, v0

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0xc8

    move/from16 v21, v0

    if-nez v21, :cond_6

    const/16 v21, 0x0

    :goto_5
    add-int v17, v22, v21

    .line 952
    :cond_5
    const-string v21, "WhiteListActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "total_number="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",times="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget v14, v10, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->next_cursor:I

    .line 901
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 949
    :cond_6
    const/16 v21, 0x1

    goto :goto_5

    .line 958
    .end local v5    # "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    .end local v7    # "end":I
    .end local v10    # "info":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    .end local v11    # "json":Ljava/lang/String;
    .end local v12    # "jsonData":Ljava/lang/String;
    .end local v15    # "start":I
    .end local v16    # "tail":Ljava/lang/String;
    :cond_7
    if-nez p2, :cond_9

    .line 959
    if-eqz p1, :cond_8

    .line 960
    const-string v21, "WhiteListActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isUpdate=false, isSave=true, users count="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->insertToDB(Ljava/util/List;)V

    .line 963
    :cond_8
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 966
    :cond_9
    if-eqz p1, :cond_a

    .line 967
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->clearWhiteListDataFromDB()V

    .line 968
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->insertAndUpdateToDB(Ljava/util/List;)V

    .line 970
    :cond_a
    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->sendMassage(ILjava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public keepShieldUids(Ljava/lang/String;)V
    .locals 5
    .param p1, "uids"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v2, "WhiteListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keepShieldUids, uids="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v2, "weibo_whitelist_shield_uids"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "uids"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1188
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1189
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateShieldListFromDB()Z

    .line 1190
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->finish()V

    .line 1191
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0209e6

    const v5, 0x7f0209e3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1273
    :goto_0
    return-void

    .line 1197
    :sswitch_0
    const-string v0, "WhiteListActivity"

    const-string/jumbo v1, "onClick, wb_whitelist_titleimage!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateShieldListFromDB()Z

    .line 1204
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->finish()V

    goto :goto_0

    .line 1209
    :sswitch_1
    const-string v0, "WhiteListActivity"

    const-string/jumbo v1, "onClick, wb_whitelist_updatebtn!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const v0, 0x7f0f0757

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->showProgressDialog(I)V

    .line 1213
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$5;->start()V

    goto :goto_0

    .line 1225
    :sswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-eqz v2, :cond_2

    .line 1227
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldIsClose:Z

    if-nez v2, :cond_0

    .line 1228
    const-string v2, "WhiteListActivity"

    const-string/jumbo v3, "onClick, wb_whitelist_shield_arrow!! mShieldIsClose is false, to close!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1231
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->setDataCollection(Ljava/util/ArrayList;)V

    .line 1232
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShiledAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    .line 1240
    :goto_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldIsClose:Z

    if-nez v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldIsClose:Z

    goto :goto_0

    .line 1235
    :cond_0
    const-string v2, "WhiteListActivity"

    const-string/jumbo v3, "onClick, wb_whitelist_shield_arrow!! mShieldIsClose is true, to reloader!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1237
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoaderShield(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1240
    goto :goto_2

    .line 1243
    :cond_2
    const-string v0, "WhiteListActivity"

    const-string/jumbo v1, "onClick, wb_whitelist_shield_arrow!! mShiledAdapter = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1249
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-eqz v2, :cond_5

    .line 1251
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllIsClose:Z

    if-nez v2, :cond_3

    .line 1252
    const-string v2, "WhiteListActivity"

    const-string/jumbo v3, "onClick, wb_whitelist_shield_arrow!! mAllIsClose is false, to close!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mFilterArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1255
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->setDataCollection(Ljava/util/ArrayList;)V

    .line 1256
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->notifyDataSetChanged()V

    .line 1264
    :goto_3
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllIsClose:Z

    if-nez v2, :cond_4

    :goto_4
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllIsClose:Z

    goto/16 :goto_0

    .line 1259
    :cond_3
    const-string v2, "WhiteListActivity"

    const-string/jumbo v3, "onClick, wb_whitelist_shield_arrow!! mAllIsClose is true, to reloader!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mFilterArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1261
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoader(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    move v0, v1

    .line 1264
    goto :goto_4

    .line 1267
    :cond_5
    const-string v0, "WhiteListActivity"

    const-string/jumbo v1, "onClick, wb_whitelist_filter_headerarrow!! mShiledAdapter = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1195
    :sswitch_data_0
    .sparse-switch
        0x7f100a9d -> :sswitch_0
        0x7f100a9e -> :sswitch_1
        0x7f100aa9 -> :sswitch_3
        0x7f100aaf -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const-string v0, "WhiteListActivity"

    const-string/jumbo v1, "onCreate."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->requestWindowFeature(I)Z

    .line 132
    const v0, 0x7f0401b4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->setContentView(I)V

    .line 134
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->initData()V

    .line 135
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->initViews()V

    .line 138
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1060
    const/4 v0, 0x0

    .line 1062
    .local v0, "queryString":Ljava/lang/CharSequence;
    if-eqz p2, :cond_0

    .line 1064
    const-string/jumbo v1, "querystring"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    const-string/jumbo v1, "querystring"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1075
    :cond_0
    const-string v1, "WhiteListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateLoader, queryString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v2, p0, v1, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WhiteListLoader;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->clearAdapterItemCacheBitmap()V

    .line 154
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->setResult(I)V

    .line 155
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 389
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getHeaderViewsCount()I

    move-result v0

    .line 393
    .local v0, "headerCount":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mMergedAdapter:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    invoke-virtual {v4, p3}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->getItemType(I)I

    move-result v1

    .line 394
    .local v1, "type":I
    const-string v4, "WhiteListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemClick, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-nez v1, :cond_2

    .line 396
    const-string v4, "WhiteListActivity"

    const-string/jumbo v5, "onItemClick, type is shield"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllIsClose:Z

    if-eqz v4, :cond_0

    .line 398
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllIsClose:Z

    if-nez v4, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mAllIsClose:Z

    .line 399
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateFilterArrow()V

    .line 411
    :cond_0
    :goto_1
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;II)V

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$1;->start()V

    .line 452
    return-void

    :cond_1
    move v2, v3

    .line 398
    goto :goto_0

    .line 402
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 403
    const-string v4, "WhiteListActivity"

    const-string/jumbo v5, "onItemClick, type is all"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldIsClose:Z

    if-eqz v4, :cond_0

    .line 406
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldIsClose:Z

    if-nez v4, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldIsClose:Z

    .line 407
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateShieldArrow()V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 406
    goto :goto_2
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1082
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v1, "WhiteListActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- onLoadFinished, cursor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity$4;->start()V

    .line 1125
    return-void

    .line 1082
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 67
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "WhiteListActivity"

    const-string v1, "--- onLoaderReset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    const-string v0, "WhiteListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart, mShieldLoaderStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldLoaderStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mShieldLoaderStarted:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoaderShield(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->setSearchMode(Z)V

    .line 585
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->updateUpdateViewVisiable()V

    .line 587
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mListView:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 589
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const-string v2, "WhiteListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTextChanged, s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsSearchMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mIsSearchMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adapter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->mIsSearchMode:Z

    if-eqz v2, :cond_2

    .line 593
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    if-eqz v2, :cond_1

    .line 594
    const-string v2, "WhiteListActivity"

    const-string/jumbo v3, "onTextChanged, mIsSearchMode=true, adapter instanceof WhiteListAllAdapter, not change!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 601
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "querystring"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 604
    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoader(Landroid/os/Bundle;)V

    .line 619
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_2
    return-void

    .line 583
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 596
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    const-string v2, "WhiteListActivity"

    const-string/jumbo v3, "onTextChanged, mIsSearchMode=true, adapter not of WhiteListAllAdapter, change to AllAdapter!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->setToExcludeShieldListView()V

    goto :goto_1

    .line 608
    :cond_2
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;

    if-eqz v2, :cond_3

    .line 609
    const-string v2, "WhiteListActivity"

    const-string/jumbo v4, "onTextChanged, mIsSearchMode=false, adapter instanceof MergedAdapter, not change!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_3
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->startLoaderShield(I)V

    goto :goto_2

    .line 611
    :cond_3
    const-string v2, "WhiteListActivity"

    const-string/jumbo v4, "onTextChanged, mIsSearchMode=false, adapter not of MergedAdapter, change to Mergedadapter!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->setToIncludeStarredListView()V

    goto :goto_3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 636
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100aa3

    if-ne v0, v1, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/WhiteListActivity;->hideSoftKeyboard()V

    .line 639
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
