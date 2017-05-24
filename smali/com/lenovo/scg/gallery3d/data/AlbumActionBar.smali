.class public Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"


# instance fields
.field private mActionBarView:Landroid/view/View;

.field protected mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAlbumCount:Landroid/widget/TextView;

.field private mAlbumTitle:Landroid/widget/TextView;

.field private mBarBackView:Landroid/widget/ImageView;

.field private mBarLayout:Landroid/view/View;

.field private mBottomLayout:Landroid/view/View;

.field private mBtnAll:Landroid/widget/ImageButton;

.field private mBtnIntoUpload:Landroid/widget/ImageButton;

.field private mBtnNone:Landroid/widget/ImageButton;

.field private mBtnUpload:Landroid/widget/Button;

.field private mChangeFolder:Landroid/view/View;

.field private mChangeFolderIcon:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

.field private mParentView:Landroid/view/ViewGroup;

.field private mSelected:Landroid/widget/TextView;

.field private mToFolder:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/lenovo/scg/gallery3d/data/MediaSet;)V
    .locals 3
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "mediaSet"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 23
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mContext:Landroid/content/Context;

    .line 25
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 27
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    .line 29
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarBackView:Landroid/widget/ImageView;

    .line 31
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumTitle:Landroid/widget/TextView;

    .line 33
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumCount:Landroid/widget/TextView;

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarLayout:Landroid/view/View;

    .line 37
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mParentView:Landroid/view/ViewGroup;

    .line 39
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBottomLayout:Landroid/view/View;

    .line 41
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnAll:Landroid/widget/ImageButton;

    .line 43
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnNone:Landroid/widget/ImageButton;

    .line 45
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mSelected:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mToFolder:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnUpload:Landroid/widget/Button;

    .line 51
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mChangeFolder:Landroid/view/View;

    .line 53
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mChangeFolderIcon:Landroid/view/View;

    .line 55
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnIntoUpload:Landroid/widget/ImageButton;

    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 59
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mParentView:Landroid/view/ViewGroup;

    .line 61
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mParentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 65
    const v1, 0x7f04001d

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public dealwithEvent(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarBackView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnAll:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnNone:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnUpload:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mChangeFolder:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnIntoUpload:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getActionBarBottomHeight()I
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09034f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 153
    .local v0, "h":I
    return v0
.end method

.method public getActionBarHeight()I
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090455

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 148
    .local v0, "h":I
    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 257
    const/16 v0, 0x8

    .line 261
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public hideActionBar()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_0
    return-void
.end method

.method public hideActionBarBottom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBottomLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->updateSelect(I)V

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnAll:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnNone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBottomLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnIntoUpload:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public initActionBar()V
    .locals 5

    .prologue
    .line 70
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 114
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarLayout:Landroid/view/View;

    .line 72
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarBackView:Landroid/widget/ImageView;

    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumTitle:Landroid/widget/TextView;

    .line 74
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumCount:Landroid/widget/TextView;

    .line 75
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBottomLayout:Landroid/view/View;

    .line 76
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnAll:Landroid/widget/ImageButton;

    .line 77
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnNone:Landroid/widget/ImageButton;

    .line 78
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mSelected:Landroid/widget/TextView;

    .line 79
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mToFolder:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnUpload:Landroid/widget/Button;

    .line 81
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mChangeFolder:Landroid/view/View;

    .line 82
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mChangeFolderIcon:Landroid/view/View;

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    const v3, 0x7f1000e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnIntoUpload:Landroid/widget/ImageButton;

    .line 84
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumTitle:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumCount:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 86
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mSelected:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 87
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mToFolder:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 88
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnUpload:Landroid/widget/Button;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/Button;)V

    .line 89
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    instance-of v2, v2, Lcom/lenovo/scg/gallery3d/data/LocalTimeMergeAlbum;

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "Today"

    if-ne v1, v2, :cond_3

    .line 95
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f06db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "albumCount":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_5

    .line 107
    const-string v0, "999+"

    .line 111
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumCount:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v0    # "albumCount":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBarBottom()V

    goto/16 :goto_0

    .line 96
    .restart local v1    # "title":Ljava/lang/String;
    :cond_3
    const-string v2, "Week"

    if-ne v1, v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f06ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 98
    :cond_4
    const-string v2, "Fature"

    if-ne v1, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0966

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 109
    .restart local v0    # "albumCount":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0864

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public removeActionBarView()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    :cond_0
    return-void
.end method

.method public setCanChangeFolder(Z)V
    .locals 2
    .param p1, "can"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mChangeFolder:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mChangeFolderIcon:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mChangeFolder:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mSelected:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mToFolder:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 185
    :cond_0
    return-void

    .line 180
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSelectedAll(Z)V
    .locals 4
    .param p1, "realy"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnAll:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnNone:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 189
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnAll:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnNone:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 192
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 189
    goto :goto_0

    :cond_2
    move v2, v1

    .line 190
    goto :goto_1
.end method

.method public setShowCloud(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumCount:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumCount:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnIntoUpload:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnIntoUpload:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnAll:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnAll:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnNone:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnNone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 170
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 159
    goto :goto_0

    :cond_5
    move v2, v1

    .line 162
    goto :goto_1
.end method

.method public setToFolder(Ljava/lang/String;)V
    .locals 1
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mToFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mToFolder:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    return-void
.end method

.method public setWindowFeature()V
    .locals 3

    .prologue
    .line 272
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 273
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 274
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 275
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 277
    return-void
.end method

.method public showActionBar()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public showActionBarBottom()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBottomLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnAll:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnNone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnIntoUpload:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBottomLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public updateBar(I)V
    .locals 4
    .param p1, "curCount"    # I

    .prologue
    const v3, 0x7f0f0864

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "albumCount":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 120
    const-string v0, "999+"

    .line 129
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mAlbumCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public updateSelect(I)V
    .locals 4
    .param p1, "select"    # I

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mSelected:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 215
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "albumSelect":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 217
    const-string v0, "999+"

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mSelected:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    if-lez p1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnUpload:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mSelected:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    .end local v0    # "albumSelect":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 227
    .restart local v0    # "albumSelect":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mBtnUpload:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->mSelected:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
