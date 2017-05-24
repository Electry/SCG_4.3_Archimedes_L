.class public Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;
.super Ljava/lang/Object;
.source "AlbumSetActionBar.java"


# instance fields
.field private mActionBarView:Landroid/view/View;

.field protected mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAlbumSetTitle:Landroid/widget/TextView;

.field private mBarBackView:Landroid/widget/ImageView;

.field private mBarLayout:Landroid/widget/FrameLayout;

.field private mParentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 18
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mActionBarView:Landroid/view/View;

    .line 19
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarBackView:Landroid/widget/ImageView;

    .line 20
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mAlbumSetTitle:Landroid/widget/TextView;

    .line 21
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarLayout:Landroid/widget/FrameLayout;

    .line 22
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    .line 25
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 26
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    .line 28
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    const v2, 0x7f1000ed

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 31
    const v1, 0x7f04001e

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mActionBarView:Landroid/view/View;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public dealwithEvent(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarBackView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarBackView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_0
    return-void
.end method

.method public getActionBarHeight()I
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090455

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 50
    .local v0, "h":I
    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hideActionBar()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public initActionBar()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f1000ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarLayout:Landroid/widget/FrameLayout;

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f1000ef

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarBackView:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f1000f0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mAlbumSetTitle:Landroid/widget/TextView;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mAlbumSetTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 43
    return-void
.end method

.method public removeActionBarView()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mActionBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_0
    return-void
.end method

.method public showActionBar()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumSetActionBar;->mBarLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 57
    :cond_0
    return-void
.end method
