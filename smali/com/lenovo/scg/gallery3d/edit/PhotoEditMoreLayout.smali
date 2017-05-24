.class public Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;
.super Ljava/lang/Object;
.source "PhotoEditMoreLayout.java"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDetailsText:Landroid/widget/TextView;

.field private mDetailsView:Landroid/widget/ImageView;

.field private mDetailsViews:Landroid/widget/LinearLayout;

.field private mMoreItems:Landroid/widget/RelativeLayout;

.field private mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

.field private mRootView:Landroid/view/View;

.field private mSlidShowText:Landroid/widget/TextView;

.field private mSlidShowView:Landroid/widget/ImageView;

.field private mSlidShowViews:Landroid/widget/LinearLayout;

.field private mUsedAsText:Landroid/widget/TextView;

.field private mUsedAsView:Landroid/widget/ImageView;

.field private mUsedAsViews:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "photoEditorActionBar"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->clickListener:Landroid/view/View$OnClickListener;

    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    .line 53
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .line 54
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->initMoreItems()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initMoreItems()V
    .locals 5

    .prologue
    const v4, 0x3f4ccccd    # 0.8f

    .line 58
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f100734

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    .line 60
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f100735

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsViews:Landroid/widget/LinearLayout;

    .line 61
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f100738

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowViews:Landroid/widget/LinearLayout;

    .line 62
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f10073b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsViews:Landroid/widget/LinearLayout;

    .line 64
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f100736

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsView:Landroid/widget/ImageView;

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f100739

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowView:Landroid/widget/ImageView;

    .line 66
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f10073c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsView:Landroid/widget/ImageView;

    .line 67
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f100737

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsText:Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f10073a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowText:Landroid/widget/TextView;

    .line 69
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mRootView:Landroid/view/View;

    const v3, 0x7f10073d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsText:Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 79
    .local v1, "scaleVal":F
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    .end local v0    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "scaleVal":F
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsViews:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowViews:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsViews:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method private updateDetailsViews(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020616

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mDetailsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateMoreItems()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 131
    .local v0, "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isCameraBrustPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateUsedAsViews(Z)V

    .line 133
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateDetailsViews(Z)V

    .line 135
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateSlidShowViews(Z)V

    .line 155
    :goto_0
    return-void

    .line 137
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isCanSlidShow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateSlidShowViews(Z)V

    .line 143
    :goto_1
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateUsedAsViews(Z)V

    .line 144
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateDetailsViews(Z)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateSlidShowViews(Z)V

    goto :goto_1

    .line 146
    :cond_2
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateDetailsViews(Z)V

    .line 147
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateUsedAsViews(Z)V

    .line 148
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateSlidShowViews(Z)V

    goto :goto_0
.end method

.method private updateSlidShowViews(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020617

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mSlidShowText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateUsedAsViews(Z)V
    .locals 3
    .param p1, "clickable"    # Z

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020618

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsViews:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0204a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mUsedAsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public isMoreItemsVisible()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateMoreItems()V

    .line 194
    :cond_0
    return-void
.end method

.method public updateMoreItemsVisible()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->updateMoreItems()V

    .line 207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditMoreLayout;->mMoreItems:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
