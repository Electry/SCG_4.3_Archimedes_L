.class public Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MtpPagerAdapter.java"


# instance fields
.field private mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

.field private mGeneration:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

.field private mReusableView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;

.field private mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "broker"    # Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mGeneration:I

    .line 41
    sget-object v0, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;->Descending:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    .line 49
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 85
    move-object v0, p3

    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;

    .line 86
    .local v0, "v":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;->unregisterOnCheckedChangeListener(Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker$OnCheckedChangedListener;)V

    .line 88
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;

    .line 89
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;

    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 76
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->sizeWithoutLabels()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 94
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;

    if-eqz v2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;

    .line 96
    .local v1, "v":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mReusableView:Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v2, p2, v3}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getWithoutLabels(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)Landroid/mtp/MtpObjectInfo;

    move-result-object v0

    .line 101
    .local v0, "i":Landroid/mtp/MtpObjectInfo;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->getImageView()Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getDevice()Landroid/mtp/MtpDevice;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mGeneration:I

    invoke-virtual {v2, v3, v0, v4}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpImageView;->setMtpDeviceAndObjectInfo(Landroid/mtp/MtpDevice;Landroid/mtp/MtpObjectInfo;I)V

    .line 102
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mBroker:Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;

    invoke-virtual {v1, p2, v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;->setPositionAndBroker(ILcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;)V

    .line 103
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    return-object v1

    .line 98
    .end local v0    # "i":Landroid/mtp/MtpObjectInfo;
    .end local v1    # "v":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400eb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;

    .restart local v1    # "v":Lcom/lenovo/scg/gallery3d/ingest/ui/MtpFullscreenView;
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-ne p1, p2, :cond_0

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
    .line 63
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mGeneration:I

    .line 64
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 65
    return-void
.end method

.method public setMtpDeviceIndex(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)V
    .locals 0
    .param p1, "index"    # Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public translatePositionWithLabels(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mModel:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->mSortOrder:Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;->getPositionWithoutLabelsFromPosition(ILcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$SortOrder;)I

    move-result v0

    goto :goto_0
.end method
