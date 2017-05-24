.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;
.super Ljava/lang/Object;
.source "ContactsUIHelper.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ActivityCallback;


# static fields
.field public static final CONTACTS_MULTIPLE:I = 0x7

.field public static final CONTACTS_NONE:I = 0x0

.field public static final CONTACTS_SINGLE_BBS:I = 0x6

.field public static final CONTACTS_SINGLE_EMAIL:I = 0x1

.field public static final CONTACTS_SINGLE_QQ:I = 0x3

.field public static final CONTACTS_SINGLE_WEBSITE:I = 0x4

.field public static final CONTACTS_SINGLE_WEIBO:I = 0x2

.field public static final CONTACTS_SINGLE_WEIXIN:I = 0x5


# instance fields
.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

.field mContactsStatus:I

.field mTalkbackHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;

.field tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .line 34
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 35
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 36
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 37
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 38
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 39
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 40
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 41
    iget-object v0, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 42
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mTalkbackHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/TalkbackHelper;

    .line 43
    return-void
.end method


# virtual methods
.method public getListItemVisibleNum()I
    .locals 8

    .prologue
    .line 164
    const/4 v6, 0x6

    new-array v2, v6, [Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    aput-object v7, v2, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    aput-object v7, v2, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    aput-object v7, v2, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    aput-object v7, v2, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    aput-object v7, v2, v6

    .line 165
    .local v2, "itemViews":[Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
    const/4 v5, 0x0

    .line 166
    .local v5, "num":I
    move-object v0, v2

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 167
    .local v4, "listItemView":Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 168
    add-int/lit8 v5, v5, 0x1

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v4    # "listItemView":Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
    :cond_1
    return v5
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 58
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "email":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getWeibo()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "weibo":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getQQGroup()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "QQGroup":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getWebSite()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "website":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getWeixin()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "weixin":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getBBS()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "bbs":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {p0, v6, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->setSummaryOrHide(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;)V

    .line 66
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {p0, v6, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->setSummaryOrHide(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;)V

    .line 67
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {p0, v6, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->setSummaryOrHide(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;)V

    .line 68
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {p0, v6, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->setSummaryOrHide(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;)V

    .line 69
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {p0, v6, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->setSummaryOrHide(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;)V

    .line 70
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {p0, v6, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->setSummaryOrHide(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;)V

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    const/4 v6, 0x0

    iput v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    .line 92
    :goto_0
    iget v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    packed-switch v6, :pswitch_data_0

    .line 119
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v7, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;)V

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void

    .line 76
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    const/4 v6, 0x3

    iput v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    const/4 v6, 0x1

    iput v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    const/4 v6, 0x2

    iput v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 83
    iput v8, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    goto/16 :goto_0

    .line 84
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 85
    const/4 v6, 0x5

    iput v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    goto/16 :goto_0

    .line 86
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 87
    const/4 v6, 0x6

    iput v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    goto/16 :goto_0

    .line 89
    :cond_6
    const/4 v6, 0x7

    iput v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->mContactsStatus:I

    goto/16 :goto_0

    .line 94
    :pswitch_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setVisibility(I)V

    goto/16 :goto_1

    .line 97
    :pswitch_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->copy(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;)V

    goto/16 :goto_1

    .line 100
    :pswitch_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->copy(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;)V

    .line 101
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setArrowVisibility(I)V

    goto/16 :goto_1

    .line 104
    :pswitch_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->copy(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;)V

    goto/16 :goto_1

    .line 107
    :pswitch_4
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->copy(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;)V

    goto/16 :goto_1

    .line 110
    :pswitch_5
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->copy(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;)V

    goto/16 :goto_1

    .line 113
    :pswitch_6
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->copy(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;)V

    goto/16 :goto_1

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method setSummaryOrHide(Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;)V
    .locals 2
    .param p1, "listItemView"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setVisibility(I)V

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setVisibility(I)V

    .line 50
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummary(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummaryVisibility(I)V

    goto :goto_0
.end method
