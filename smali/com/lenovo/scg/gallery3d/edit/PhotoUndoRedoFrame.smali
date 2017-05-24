.class public Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;
.super Ljava/lang/Object;
.source "PhotoUndoRedoFrame.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME:I = 0xc8

.field private static final NOT_SCROLL_EFFECT_VIEWS_MAX_NUM:I = 0x5


# instance fields
.field listener:Landroid/view/View$OnClickListener;

.field private mBeautyViews:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mEditBackImage:Landroid/widget/ImageButton;

.field private mEffectViewNums:I

.field private mEffectsContainer:Landroid/widget/LinearLayout;

.field private mIsFakeHorizontal:Z

.field private mMicroViews:Landroid/widget/LinearLayout;

.field private mMosaicViews:Landroid/widget/LinearLayout;

.field private mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRedoView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mSaveButton:Landroid/widget/ImageView;

.field private mSourceImageView:Landroid/widget/ImageView;

.field private mSpecialEffectsViews:Landroid/widget/LinearLayout;

.field private mUndoRedoImageFrame:Landroid/widget/FrameLayout;

.field private mUndoRedoViews:Landroid/widget/RelativeLayout;

.field private mUndoView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoEditroActionBar"    # Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    .param p3, "rootView"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->listener:Landroid/view/View$OnClickListener;

    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    .line 81
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRootView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->initUndoRedoViews(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->makeEffectViewsClickable()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->makeEffectViewsUnclickable()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showSDCardFullDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEditBackImage:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMicroViews:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initEffectsViews()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100787

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->getMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 129
    .local v0, "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://mms/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f100784

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f10078d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMicroViews:Landroid/widget/LinearLayout;

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMicroViews:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMicroViews:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 152
    iget v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMicroViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRootView:Landroid/view/View;

    const v2, 0x7f10078a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    .line 159
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    .line 160
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 161
    iget v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    .line 163
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_7
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->layoutEffectViews()V

    .line 167
    return-void

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private layoutEffectViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 170
    iget v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    const/4 v8, 0x5

    if-gt v7, v8, :cond_5

    .line 171
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 172
    .local v6, "width":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 173
    .local v1, "height":I
    if-le v6, v1, :cond_0

    move v6, v1

    .line 174
    :cond_0
    const/4 v2, 0x0

    .line 175
    .local v2, "marginLeft":F
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 176
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    .local v0, "beautyParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 178
    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 179
    .local v5, "viewWidth":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    mul-int/2addr v7, v5

    sub-int v7, v6, v7

    int-to-float v7, v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 180
    float-to-int v7, v2

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 181
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    .end local v0    # "beautyParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "viewWidth":I
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 185
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 186
    .local v4, "specialEffectParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v4, :cond_3

    .line 187
    cmpl-float v7, v2, v9

    if-nez v7, :cond_2

    .line 188
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 189
    .restart local v5    # "viewWidth":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    mul-int/2addr v7, v5

    sub-int v7, v6, v7

    int-to-float v7, v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 191
    .end local v5    # "viewWidth":I
    :cond_2
    float-to-int v7, v2

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 192
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .end local v4    # "specialEffectParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    .line 208
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 209
    .local v3, "mosaicParams":Landroid/widget/LinearLayout$LayoutParams;
    cmpl-float v7, v2, v9

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    .line 210
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 211
    .restart local v5    # "viewWidth":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    mul-int/2addr v7, v5

    sub-int v7, v6, v7

    int-to-float v7, v7

    iget v8, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectViewNums:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 213
    .end local v5    # "viewWidth":I
    :cond_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_5

    .line 214
    float-to-int v7, v2

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 215
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mMosaicViews:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .end local v1    # "height":I
    .end local v2    # "marginLeft":F
    .end local v3    # "mosaicParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "width":I
    :cond_5
    return-void
.end method

.method private makeEffectViewsClickable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 569
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 570
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 571
    return-void
.end method

.method private makeEffectViewsUnclickable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 564
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mBeautyViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 565
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSpecialEffectsViews:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 566
    return-void
.end method

.method private showSDCardFullDialog()V
    .locals 3

    .prologue
    .line 610
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0857

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 612
    const v1, 0x7f0f0a14

    new-instance v2, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$5;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$5;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 618
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 619
    return-void
.end method


# virtual methods
.method public enableRedoView()V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enabledRedoView(Z)V

    .line 246
    return-void
.end method

.method public enableUndoView()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enabledUndoView(Z)V

    .line 241
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enabledSaveView(Z)V

    .line 242
    return-void
.end method

.method public enabledRedoView(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public enabledSaveView(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const v2, 0x7f020615

    .line 269
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 270
    :cond_0
    if-eqz p1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 278
    :goto_1
    if-eqz p1, :cond_2

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    const v1, 0x7f02061b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEditBackImage:Landroid/widget/ImageButton;

    const v1, 0x7f02060c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEditBackImage:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    const v1, 0x7f02061a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEditBackImage:Landroid/widget/ImageButton;

    const v1, 0x7f02060a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public enabledUndoView(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0207e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public exitEffectsMode()V
    .locals 2

    .prologue
    .line 574
    const-string v0, "jiaxiaowei"

    const-string v1, "exitEffectsMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->showEditBar()V

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->resetToFullViewAnimation()V

    .line 578
    return-void
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoRedoImageFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hideEffectViews()V

    .line 548
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->hideUndoRedoView()V

    .line 549
    return-void
.end method

.method public hideEffectViews()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    return-void
.end method

.method public hideProgressBar()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 297
    return-void
.end method

.method public hideUndoRedoView()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoRedoViews:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSourceImageView:Landroid/widget/ImageView;

    check-cast v0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->reset()V

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSourceImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoRedoImageFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 228
    return-void
.end method

.method public initUndoRedoViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    const v0, 0x7f100790

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mProgressBar:Landroid/widget/ProgressBar;

    .line 87
    const v0, 0x7f100765

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoRedoImageFrame:Landroid/widget/FrameLayout;

    .line 88
    const v0, 0x7f100767

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoRedoViews:Landroid/widget/RelativeLayout;

    .line 89
    const v0, 0x7f100768

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEditBackImage:Landroid/widget/ImageButton;

    .line 90
    const v0, 0x7f100769

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f10076b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f1000a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f100766

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSourceImageView:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f100783

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectsContainer:Landroid/widget/LinearLayout;

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEditBackImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEditBackImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectsContainer:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 115
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->initEffectsViews()V

    .line 116
    return-void
.end method

.method public makeUndoRedoViewsClickable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 558
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 559
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 560
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 561
    return-void
.end method

.method public makeUndoRedoViewsUnclickable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 553
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mRedoView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSaveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 555
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showEffectsViews()V

    .line 543
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showUndoRedoView()V

    .line 544
    return-void
.end method

.method public showEffectsViews()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    return-void
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 301
    return-void
.end method

.method public showSourceImageView(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canScale"    # Z

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 594
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSourceImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSourceImageView:Landroid/widget/ImageView;

    check-cast v0, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/edit/PinchImageView;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 592
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoRedoImageFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020951

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mSourceImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public showUndoRedoView()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoRedoViews:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 530
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->updateUndoRedoViews()V

    .line 531
    return-void
.end method

.method public startEffectViewsInAnim()V
    .locals 13

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 452
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showEffectsViews()V

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 461
    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 462
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 463
    return-void

    .line 458
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    move-object v4, v0

    move v5, v1

    move v7, v1

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    goto :goto_0
.end method

.method public startEffectsViewsOutAnim()V
    .locals 13

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 503
    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 504
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mEffectsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 505
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$4;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 525
    return-void

    .line 500
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v1

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "outAnimation":Landroid/view/animation/TranslateAnimation;
    goto :goto_0
.end method

.method public startUndoRedoViewOutAnim()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 466
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 468
    .local v0, "outAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 469
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoRedoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$3;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 492
    return-void
.end method

.method public startUndoRedoViewsInAnim()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 425
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->showUndoRedoView()V

    .line 426
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 428
    .local v0, "inAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 429
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mUndoRedoViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 430
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame$2;-><init>(Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 449
    return-void
.end method

.method public unenableRedoView()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enabledRedoView(Z)V

    .line 237
    return-void
.end method

.method public unenableUndoView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enabledUndoView(Z)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enabledSaveView(Z)V

    .line 233
    return-void
.end method

.method public updateUndoRedoViews()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isUndoCanClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enableUndoView()V

    .line 602
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->isRedoCanClicked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->enableRedoView()V

    .line 607
    :goto_1
    return-void

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->unenableUndoView()V

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoUndoRedoFrame;->unenableRedoView()V

    goto :goto_1
.end method
