.class public Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;
.super Landroid/widget/BaseAdapter;
.source "MtpAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field public static final ITEM_TYPE_BUCKET:I = 0x1

.field public static final ITEM_TYPE_MEDIA:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeneration:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

.field private mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Descending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public deviceConnected()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->get(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMtpDeviceIndex()Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 168
    :goto_0
    return v1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    array-length v0, v1

    .line 165
    .local v0, "numSections":I
    if-lt p1, v0, :cond_1

    .line 166
    add-int/lit8 p1, v0, -0x1

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getFirstPositionForBucketNumber(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getCount()I

    move-result v0

    .line 174
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 180
    :goto_0
    return v1

    .line 177
    :cond_0
    if-lt p1, v0, :cond_1

    .line 178
    add-int/lit8 p1, v0, -0x1

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getBucketNumberForPosition(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I

    move-result v1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getBuckets(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSortOrder()Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getItemViewType(I)I

    move-result v2

    .line 138
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 140
    if-nez p2, :cond_0

    .line 141
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400ec

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpThumbnailTileView;

    .line 145
    .local v1, "imageView":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpThumbnailTileView;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpObjectInfo;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    invoke-virtual {v1, v4, v3, v5}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpThumbnailTileView;->setMtpDeviceAndObjectInfo(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;I)V

    .line 155
    .end local v1    # "imageView":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpThumbnailTileView;
    :goto_1
    return-object v1

    :cond_0
    move-object v1, p2

    .line 143
    check-cast v1, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpThumbnailTileView;

    .restart local v1    # "imageView":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpThumbnailTileView;
    goto :goto_0

    .line 149
    .end local v1    # "imageView":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpThumbnailTileView;
    :cond_1
    if-nez p2, :cond_2

    .line 150
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400ea

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/ui/DateTileView;

    .line 154
    .local v0, "dateTile":Lcom/lenovo/scg/gallery3d/ingest/ui/DateTileView;
    :goto_2
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/ingest/ui/DateTileView;->setDate(Lcom/lenovo/scg/gallery3d/ingest/SimpleDate;)V

    move-object v1, v0

    .line 155
    goto :goto_1

    .end local v0    # "dateTile":Lcom/lenovo/scg/gallery3d/ingest/ui/DateTileView;
    :cond_2
    move-object v0, p2

    .line 152
    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/ui/DateTileView;

    .restart local v0    # "dateTile":Lcom/lenovo/scg/gallery3d/ingest/ui/DateTileView;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x2

    return v0
.end method

.method public indexReady()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->indexReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public itemAtPositionIsBucket(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemAtPositionIsMedia(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    .line 69
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mGeneration:I

    .line 75
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 76
    return-void
.end method

.method public setMtpDeviceIndex(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)V
    .locals 0
    .param p1, "index"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public translatePositionWithoutLabels(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getPositionFromPositionWithoutLabels(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I

    move-result v0

    goto :goto_0
.end method
