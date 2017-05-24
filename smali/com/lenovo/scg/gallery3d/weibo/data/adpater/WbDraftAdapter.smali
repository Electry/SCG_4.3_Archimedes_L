.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;
.super Landroid/widget/BaseAdapter;
.source "WbDraftAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ShareFinishListener;,
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$SendThread;,
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDraftArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

.field private mLock:[B

.field private mQQShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

.field private mSinaShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;

    .line 46
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    .line 48
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mLock:[B

    .line 50
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mSinaShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .line 52
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mQQShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    .line 139
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 187
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mLock:[B

    .line 57
    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mSinaShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .line 58
    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mQQShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mQQShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mSinaShareManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mLock:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;)Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 87
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 88
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0401a3

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    .line 89
    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 90
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;
    invoke-direct {v0, p0, v6}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$1;)V

    .line 91
    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;
    const v5, 0x7f100a07

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 92
    const v5, 0x7f100a15

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 93
    const v5, 0x7f100a12

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 94
    const v5, 0x7f100a13

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->imgHint:Landroid/widget/ImageView;

    .line 95
    const v5, 0x7f100a14

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->imgPos:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, p2

    .line 97
    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 102
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 103
    .local v2, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sContent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const-string v5, "MM-dd kk:mm"

    iget-wide v6, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->lTime:J

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "sTime":Ljava/lang/String;
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget v5, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    iget v5, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    const/16 v6, 0x65

    if-ne v5, v6, :cond_2

    .line 107
    :cond_0
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f092c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sScreenName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_1
    iget-object v5, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sFile:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 119
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->imgHint:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :goto_2
    const v5, 0x7f100a11

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 125
    .local v4, "vChild":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-object p2

    .line 100
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    .end local v3    # "sTime":Ljava/lang/String;
    .end local v4    # "vChild":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;
    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;
    goto :goto_0

    .line 108
    .restart local v2    # "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    .restart local v3    # "sTime":Ljava/lang/String;
    :cond_2
    iget v5, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    if-eqz v5, :cond_3

    iget v5, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->action:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_4

    .line 109
    :cond_3
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f092b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sScreenName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    :cond_4
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f092a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v5, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sLat:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v2, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->sLong:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 113
    :cond_5
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->imgPos:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 115
    :cond_6
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->imgPos:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 121
    :cond_7
    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter$ViewHolder;->imgHint:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    const v1, 0x7f100004

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 135
    .local v0, "item":Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    iget-boolean v1, v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->bExpand:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;->bExpand:Z

    .line 136
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->notifyDataSetChanged()V

    .line 137
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setItemArr(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "arrItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mDraftArr:Ljava/util/ArrayList;

    .line 164
    return-void
.end method

.method public setOnItemDeleteListener(Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WbDraftAdapter;->mListener:Lcom/lenovo/scg/gallery3d/weibo/activities/WbDraft$OnItemDeleteListener;

    .line 168
    return-void
.end method
