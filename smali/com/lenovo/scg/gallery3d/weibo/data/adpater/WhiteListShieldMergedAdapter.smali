.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;
.super Landroid/widget/BaseAdapter;
.source "WhiteListShieldMergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$1;,
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$CustomDataSetObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WhiteListShieldMergedAdapter"

.field public static final TYPE_ALL:I = 0x2

.field public static final TYPE_DIVIDER:I = 0x1

.field public static final TYPE_SHIELD:I


# instance fields
.field private mAccountFilterHeaderContainer:Landroid/view/View;

.field private mAllAdapter:Landroid/widget/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mItemPaddingLeft:I

.field private mItemPaddingRight:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mShieldAdapter:Landroid/widget/BaseAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/BaseAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alladapter"    # Landroid/widget/BaseAdapter;
    .param p3, "shieldadapter"    # Landroid/widget/BaseAdapter;
    .param p4, "accountFilterHeaderContainer"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mItemPaddingLeft:I

    .line 41
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mItemPaddingRight:I

    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    .line 45
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    .line 46
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$CustomDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$CustomDataSetObserver;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 76
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 77
    .local v1, "shieldAdapterCount":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 82
    .local v0, "allAdapterCount":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 88
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    .line 89
    .local v2, "shieldAdapterCount":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 91
    .local v0, "allAdapterCount":I
    const-string v3, "WhiteListShieldMergedAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shieldCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", allCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-ge p1, v2, :cond_0

    .line 95
    const-string v3, "WhiteListShieldMergedAdapter"

    const-string v4, "is shield frined"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 106
    :goto_0
    return-object v3

    .line 99
    :cond_0
    if-ne p1, v2, :cond_1

    .line 100
    const-string v3, "WhiteListShieldMergedAdapter"

    const-string v4, "is AccountFilterHeader"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 104
    :cond_1
    sub-int v3, p1, v2

    add-int/lit8 v1, v3, -0x1

    .line 105
    .local v1, "localPosition":I
    const-string v3, "WhiteListShieldMergedAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is all friends, pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 128
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 114
    .local v0, "shieldAdapterCount":I
    if-ge p1, v0, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 121
    :goto_0
    return v1

    .line 117
    :cond_0
    if-ne p1, v0, :cond_1

    .line 118
    const/4 v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 141
    .local v0, "contactTileAdapterCount":I
    if-ge p1, v0, :cond_1

    .line 142
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v2

    .line 150
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    if-ne p1, v0, :cond_2

    .line 144
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v4

    add-int v2, v3, v4

    goto :goto_0

    .line 147
    :cond_2
    sub-int v3, p1, v0

    add-int/lit8 v1, v3, -0x1

    .line 148
    .local v1, "localPosition":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v2

    .line 150
    .local v2, "type":I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 156
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 163
    .local v0, "contactTileAdapterCount":I
    if-ge p1, v0, :cond_0

    .line 164
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 174
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mItemPaddingLeft:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 194
    .end local v3    # "view":Landroid/view/View;
    :goto_0
    return-object v3

    .line 179
    :cond_0
    if-ne p1, v0, :cond_1

    .line 180
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mItemPaddingLeft:I

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mItemPaddingRight:I

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 184
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 187
    :cond_1
    sub-int v4, p1, v0

    add-int/lit8 v2, v4, -0x1

    .line 189
    .local v2, "localPosition":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p2, v5}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "itemView":Landroid/view/View;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mItemPaddingLeft:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    move-object v3, v1

    .line 194
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 200
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 202
    .local v0, "contactTileAdapterCount":I
    if-ge p1, v0, :cond_0

    .line 203
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v2

    .line 210
    :goto_0
    return v2

    .line 204
    :cond_0
    if-ne p1, v0, :cond_1

    .line 207
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    :cond_1
    sub-int v2, p1, v0

    add-int/lit8 v1, v2, -0x1

    .line 210
    .local v1, "localPosition":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v2

    goto :goto_0
.end method

.method public updateShield(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "isshield"    # Z

    .prologue
    .line 55
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 58
    .local v1, "shieldAdapterCount":I
    if-ge p1, v1, :cond_0

    .line 59
    const-string v2, "WhiteListShieldMergedAdapter"

    const-string/jumbo v3, "updateShield, is shield friend"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mShieldAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->updateShield(IZ)V

    .line 72
    :goto_0
    return-void

    .line 62
    :cond_0
    if-ne p1, v1, :cond_1

    .line 63
    const-string v2, "WhiteListShieldMergedAdapter"

    const-string/jumbo v3, "updateShield, is AccountFilterHeader"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_1
    sub-int v2, p1, v1

    add-int/lit8 v0, v2, -0x1

    .line 68
    .local v0, "localPosition":I
    const-string v2, "WhiteListShieldMergedAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShield, is all friends, pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListShieldMergedAdapter;->mAllAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    invoke-virtual {v2, v0, p2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->updateShield(IZ)V

    goto :goto_0
.end method
