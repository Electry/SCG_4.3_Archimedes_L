.class public Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;
.super Ljava/lang/Object;
.source "CloudActionbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;
    }
.end annotation


# instance fields
.field public mActionBarListener:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;

.field private mActionbarView:Landroid/view/View;

.field private mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

.field private mAddView:Landroid/widget/ImageView;

.field private mCheckedView:Landroid/widget/TextView;

.field private mDeleView:Landroid/view/View;

.field private mDeselectAllView:Landroid/widget/TextView;

.field private mHeadLine2:Landroid/view/View;

.field private mHeadView:Landroid/view/View;

.field private mLoadBarLayout:Landroid/widget/RelativeLayout;

.field private mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mMoreView:Landroid/widget/ImageView;

.field private mMoreWindow:Landroid/widget/PopupWindow;

.field private mOutsideBarView:Landroid/widget/LinearLayout;

.field private mOutsideDownBarView:Landroid/widget/LinearLayout;

.field private mOutsideShareBarView:Landroid/widget/LinearLayout;

.field private mPhotoDelView:Landroid/widget/LinearLayout;

.field private mPhotoDownView:Landroid/widget/LinearLayout;

.field private mPhotoEditBarView:Landroid/widget/RelativeLayout;

.field private mPhotoShareView:Landroid/widget/LinearLayout;

.field private mPhotoTitleView:Landroid/widget/TextView;

.field private mRenameView:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mSelectAllView:Landroid/widget/TextView;

.field private mSelectView:Landroid/view/View;

.field private mSelectWindow:Landroid/widget/PopupWindow;

.field private mSelected:I

.field private mShareIcon:Landroid/widget/ImageView;

.field private mShareView:Landroid/view/View;

.field private mShareWindow:Landroid/widget/PopupWindow;

.field private mTitleView:Landroid/widget/TextView;

.field private mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "ui"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 26
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    .line 28
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mResources:Landroid/content/res/Resources;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    .line 32
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    .line 36
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectView:Landroid/view/View;

    .line 38
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    .line 44
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreView:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    .line 50
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareView:Landroid/view/View;

    .line 52
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mTitleView:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoTitleView:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadLine2:Landroid/view/View;

    .line 60
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareIcon:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mRenameView:Landroid/view/View;

    .line 64
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeleView:Landroid/view/View;

    .line 66
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    .line 68
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoShareView:Landroid/widget/LinearLayout;

    .line 72
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDelView:Landroid/widget/LinearLayout;

    .line 74
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDownView:Landroid/widget/LinearLayout;

    .line 76
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideBarView:Landroid/widget/LinearLayout;

    .line 78
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideShareBarView:Landroid/widget/LinearLayout;

    .line 80
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideDownBarView:Landroid/widget/LinearLayout;

    .line 82
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadingBar:Landroid/widget/ProgressBar;

    .line 84
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    .line 86
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadBarLayout:Landroid/widget/RelativeLayout;

    .line 175
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionBarListener:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;

    .line 297
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    .line 89
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 90
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    .line 91
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->initViews()V

    .line 92
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showActionbar(Z)V

    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->onViewListener()V

    .line 94
    return-void
.end method

.method private initMoreView()V
    .locals 9

    .prologue
    const v8, 0x7f1002d0

    const/4 v7, 0x0

    const/4 v5, -0x2

    const/4 v6, 0x1

    .line 368
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 369
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040069

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 370
    .local v2, "layout":Landroid/view/View;
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v2, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    .line 371
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020444

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 373
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 374
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 376
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mRenameView:Landroid/view/View;

    .line 377
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mRenameView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v3, 0x7f1002cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 379
    .local v0, "download":Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 380
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 386
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    instance-of v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setRenameAble(Z)V

    .line 387
    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    if-le v3, v6, :cond_0

    .line 388
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setRenameAble(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method private initSelectView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 409
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 410
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04007a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 411
    .local v1, "layout":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    .line 412
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020444

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 414
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 415
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 417
    const v2, 0x7f100320

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    .line 418
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 419
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    const v2, 0x7f100321

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    .line 421
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 422
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    return-void
.end method

.method private initShareView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 394
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 395
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04007b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 396
    .local v1, "layout":Landroid/view/View;
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v1, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    .line 397
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020444

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 399
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 400
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 402
    const v3, 0x7f100322

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 403
    .local v2, "share":Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 404
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mResources:Landroid/content/res/Resources;

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    const v1, 0x7f1002e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreView:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    const v1, 0x7f1002e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f023f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareView:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareView:Landroid/view/View;

    const v1, 0x7f1002e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareIcon:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    const v1, 0x7f1002e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeleView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    const v1, 0x7f1002e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectView:Landroid/view/View;

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    const v1, 0x7f1002d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mTitleView:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    const v1, 0x7f1002d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoTitleView:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoTitleView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    const v1, 0x7f1002dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    const v1, 0x7f1002db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadLine2:Landroid/view/View;

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    const v1, 0x7f1002e9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoShareView:Landroid/widget/LinearLayout;

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    const v1, 0x7f1002ec

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDelView:Landroid/widget/LinearLayout;

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    const v1, 0x7f1002ef

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDownView:Landroid/widget/LinearLayout;

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadBarLayout:Landroid/widget/RelativeLayout;

    .line 138
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadBarLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    goto/16 :goto_0
.end method

.method private onViewListener()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    const v1, 0x7f1002d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeleView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoShareView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoShareView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDelView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDelView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDownView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDownView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public hideAddView(Z)V
    .locals 4
    .param p1, "isHide"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 494
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadLine2:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 497
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 494
    goto :goto_0

    :cond_2
    move v1, v2

    .line 495
    goto :goto_1
.end method

.method public hideBar(Z)V
    .locals 4
    .param p1, "isHide"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 561
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 562
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 562
    goto :goto_0

    :cond_3
    move v1, v2

    .line 565
    goto :goto_1
.end method

.method public hideDelItem(Z)V
    .locals 2
    .param p1, "isHide"    # Z

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 501
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeleView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :cond_0
    return-void

    .line 501
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowCheckItem(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 246
    if-eqz p1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public isShowPhotoEditBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowSyncLoading()Z
    .locals 5

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "isShow":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadingBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    .line 555
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 558
    .end local v0    # "isShow":Z
    .local v1, "isShow":I
    :goto_0
    return v1

    .end local v1    # "isShow":I
    .restart local v0    # "isShow":Z
    :cond_0
    move v1, v0

    .restart local v1    # "isShow":I
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 287
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionBarListener:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionBarListener:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;->onActionBarClick(I)V

    .line 290
    :cond_1
    return-void

    .line 260
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 270
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 276
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 257
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1002cf -> :sswitch_1
        0x7f1002d0 -> :sswitch_1
        0x7f100320 -> :sswitch_0
        0x7f100321 -> :sswitch_0
        0x7f100322 -> :sswitch_2
    .end sparse-switch
.end method

.method public setActionAble(Z)V
    .locals 3
    .param p1, "able"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020414

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020415

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setActionBarListener(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionBarListener:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;

    .line 179
    return-void
.end method

.method public setDeleAble(Z)V
    .locals 1
    .param p1, "able"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnableOutsideView(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideShareBarView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 533
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideShareBarView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideDownBarView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideDownBarView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 538
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 533
    goto :goto_0

    :cond_3
    move v1, v2

    .line 536
    goto :goto_1
.end method

.method public setEnablePhotoEditView(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoShareView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 522
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoShareView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDelView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 525
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDelView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDownView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDownView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 530
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 522
    goto :goto_0

    :cond_4
    move v0, v2

    .line 525
    goto :goto_1

    :cond_5
    move v1, v2

    .line 528
    goto :goto_2
.end method

.method public setMoreAble(Z)V
    .locals 1
    .param p1, "able"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setPhotoDelAble(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 487
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDelView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 488
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoDelView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    :cond_0
    return-void

    .line 488
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setPhotoTile(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setRenameAble(Z)V
    .locals 2
    .param p1, "able"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mRenameView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mRenameView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setSelect(II)V
    .locals 5
    .param p1, "select"    # I
    .param p2, "total"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 299
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    add-int/2addr v0, p1

    if-gez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    .line 301
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    if-lez v0, :cond_2

    if-gtz p2, :cond_4

    .line 302
    :cond_2
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionBarListener:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionBarListener:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;

    const v1, 0x7f1002de

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;->onActionBarClick(I)V

    goto :goto_0

    .line 312
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    if-lt v0, p2, :cond_5

    iput p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    .line 313
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 314
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    if-ne v0, p2, :cond_8

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 323
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setShareAble(Z)V

    .line 324
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    if-eqz v0, :cond_9

    :cond_7
    move v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setShareAble(Z)V

    .line 325
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    if-eqz v0, :cond_a

    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setRenameAble(Z)V

    .line 326
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    if-lez v0, :cond_b

    move v0, v2

    :goto_4
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setDeleAble(Z)V

    .line 327
    iget v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    if-lez v0, :cond_c

    move v0, v2

    :goto_5
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setMoreAble(Z)V

    .line 334
    :goto_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f023f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 318
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mDeselectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    move v0, v1

    .line 324
    goto :goto_2

    :cond_a
    move v0, v1

    .line 325
    goto :goto_3

    :cond_b
    move v0, v1

    .line 326
    goto :goto_4

    :cond_c
    move v0, v1

    .line 327
    goto :goto_5

    .line 329
    :cond_d
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setShareAble(Z)V

    .line 330
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setRenameAble(Z)V

    .line 331
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setDeleAble(Z)V

    .line 332
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setMoreAble(Z)V

    goto :goto_6
.end method

.method public setShareAble(Z)V
    .locals 2
    .param p1, "able"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f020441

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f020442

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showActionbar(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->isShow()Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mCheckedView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0f023f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iput v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelected:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setActionAble(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 144
    goto :goto_1
.end method

.method public showBar(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showHeadBar(Z)V

    .line 445
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showEditBar(Z)V

    .line 446
    return-void
.end method

.method public showEditBar(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mActionbarView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_0
    return-void

    .line 439
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showHeadBar(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 427
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 430
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadLine2:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 427
    goto :goto_0

    :cond_3
    move v0, v1

    .line 428
    goto :goto_1

    :cond_4
    move v0, v2

    .line 430
    goto :goto_2

    :cond_5
    move v0, v1

    .line 432
    goto :goto_3

    :cond_6
    move v2, v1

    .line 433
    goto :goto_4
.end method

.method public showLoadingBar(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 544
    if-eqz p1, :cond_0

    .line 545
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->startBarLoadingAnim(Z)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->stopBarLoadingAnim()V

    goto :goto_0
.end method

.method public showMoreView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->initMoreView()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 355
    :cond_1
    return-void
.end method

.method public showOutsideBar(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 506
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mUI:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideBarView:Landroid/widget/LinearLayout;

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideBarView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideBarView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideBarView:Landroid/widget/LinearLayout;

    const v1, 0x7f1002f3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideShareBarView:Landroid/widget/LinearLayout;

    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideBarView:Landroid/widget/LinearLayout;

    const v1, 0x7f1002f6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideDownBarView:Landroid/widget/LinearLayout;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideShareBarView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideShareBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideDownBarView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mOutsideDownBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    :cond_2
    return-void

    .line 508
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPhotoBar(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showPhotoEditView(Z)V

    .line 461
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mHeadView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 464
    :cond_0
    return-void

    .line 462
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPhotoEditView(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mPhotoEditBarView:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 452
    :cond_0
    return-void

    .line 450
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSelectView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->initSelectView()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mSelectView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 346
    :cond_1
    return-void
.end method

.method public showShareView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->initShareView()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mShareView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 364
    :cond_1
    return-void
.end method

.method public startBarLoadingAnim(Z)V
    .locals 1
    .param p1, "isPlay"    # Z

    .prologue
    .line 570
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->startAnim(Z)V

    .line 573
    :cond_0
    return-void
.end method

.method public stopBarLoadingAnim()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->stopAnim()V

    .line 579
    :cond_0
    return-void
.end method

.method public switchIconToDown(Z)V
    .locals 2
    .param p1, "isSwitch"    # Z

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 468
    if-eqz p1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreView:Landroid/widget/ImageView;

    const v1, 0x7f020428

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mMoreView:Landroid/widget/ImageView;

    const v1, 0x7f020411

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public switchIconToUp(Z)V
    .locals 2
    .param p1, "isSwitch"    # Z

    .prologue
    .line 477
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 478
    if-eqz p1, :cond_1

    .line 479
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    const v1, 0x7f02044e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->mAddView:Landroid/widget/ImageView;

    const v1, 0x7f020414

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
