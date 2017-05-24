.class public Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;
.super Ljava/lang/Object;
.source "StorageBatteryLayout.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# instance fields
.field private mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mContext:Landroid/content/Context;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mParentView:Landroid/view/ViewGroup;

    .line 37
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->initViews()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->startHideSeriousLowStorageViewAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->startShowSeriousLowStorageViewAnim()V

    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04002f

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mParentView:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f100146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mLayout:Landroid/widget/RelativeLayout;

    .line 65
    const v2, 0x7f100147

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 66
    const v2, 0x7f100149

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 67
    const v2, 0x7f100148

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 68
    const-string/jumbo v2, "wwf11"

    const-string v3, "initViews = "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 70
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 71
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 72
    return-void
.end method

.method private isBatteryViewVisible()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSeriousLowStorageViewVisible()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStorageViewVisible()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startHideSeriousLowStorageViewAnim()V
    .locals 4

    .prologue
    .line 251
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 252
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 253
    new-instance v1, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout$2;-><init>(Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 269
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    return-void
.end method

.method private startShowSeriousLowStorageViewAnim()V
    .locals 4

    .prologue
    .line 229
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 230
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 231
    new-instance v1, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout$1;-><init>(Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    return-void
.end method

.method private updateRootViewHeight()V
    .locals 3

    .prologue
    .line 211
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 212
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isBatteryViewVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isStorageViewVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isSeriousLowStorageViewVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09031b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 219
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isStorageViewVisible()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isSeriousLowStorageViewVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 220
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 222
    :cond_6
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private updateStorageLayout()V
    .locals 4

    .prologue
    .line 197
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 199
    .local v1, "params1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isBatteryViewVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 201
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 206
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-void

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090319

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 204
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public hideBatteryChargImg()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isBatteryViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 101
    return-void
.end method

.method public hideLowBatteryImg()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isBatteryViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 122
    return-void
.end method

.method public hideLowStorageImg()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isStorageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 166
    return-void
.end method

.method public hideSeriousLowBatteryImg()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isBatteryViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 143
    return-void
.end method

.method public hideSeriousLowStorageImg()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isStorageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 194
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isSeriousLowStorageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 78
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v3, 0x1

    .line 42
    if-gez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 51
    const-string/jumbo v0, "wwf11"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isSeriousLowStorageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    goto :goto_0
.end method

.method public showBatteryChargImg()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    const-string/jumbo v0, "wwf11"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBatteryChargImg mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->bringToFront()V

    .line 88
    iget v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 93
    return-void
.end method

.method public showLowBatteryImg()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isBatteryViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f020202

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 109
    iget v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 114
    return-void
.end method

.method public showLowStorageImg()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isStorageViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f020203

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 150
    iget v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateStorageLayout()V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isSeriousLowStorageViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 158
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 159
    return-void
.end method

.method public showSeriousLowBatteryImg()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isBatteryViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0202b1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 130
    iget v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mBatteryView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 135
    return-void
.end method

.method public showSeriousLowStorageImg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isStorageViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0203c0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 173
    iget v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->isSeriousLowStorageViewVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 180
    iget v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mOrientation:I

    if-lez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->mSeriousLowStorageView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->startShowSeriousLowStorageViewAnim()V

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateStorageLayout()V

    .line 186
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->updateRootViewHeight()V

    .line 187
    return-void
.end method
