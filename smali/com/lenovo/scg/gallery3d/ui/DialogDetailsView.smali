.class public Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogDetailsView"


# instance fields
.field private final mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAdapter:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;

.field private mDetails:Lcom/lenovo/scg/gallery3d/data/MediaDetails;

.field private mDetailsList:Landroid/widget/ListView;

.field private mDialog:Landroid/app/Dialog;

.field private mIndex:I

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;

.field private mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

.field private final mSource:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 0
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "source"    # Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 71
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mSource:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mListener:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    return-object p1
.end method

.method private setDetails(Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V
    .locals 7
    .param p1, "details"    # Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    .prologue
    const/4 v6, 0x0

    .line 108
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;-><init>(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    .line 109
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f066b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mSource:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04009f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 111
    .local v0, "detailsList":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f066c

    new-instance v4, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    .line 124
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$2;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 133
    return-void
.end method

.method private showRotateDialog(Lcom/lenovo/scg/gallery3d/data/MediaDetails;I)V
    .locals 11
    .param p1, "details"    # Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    .param p2, "orientation"    # I

    .prologue
    const v10, 0x7f09010e

    const/4 v9, 0x0

    const/4 v8, -0x1

    const v7, 0x7f09010d

    const/4 v6, 0x1

    .line 331
    new-instance v3, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-direct {v3, p0, p1}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;-><init>(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    .line 332
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f066b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mSource:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04009f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDetailsList:Landroid/widget/ListView;

    .line 334
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDetailsList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mAdapter:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$DetailsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 335
    new-instance v3, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f040169

    invoke-direct {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .line 336
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$3;-><init>(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)V

    .line 349
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f066c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v1}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 350
    rem-int/lit16 v3, p2, 0xb4

    if-nez v3, :cond_1

    .line 351
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_0

    .line 352
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090483

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 353
    .local v0, "detailsMaxHeight":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4, v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    .line 362
    .end local v0    # "detailsMaxHeight":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDetailsList:Landroid/widget/ListView;

    invoke-virtual {v3, v4, v8, v8}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setView(Landroid/view/View;II)V

    .line 363
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setBackground(I)V

    .line 364
    invoke-virtual {p0, p2, v6}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->setOrientationIndicator(IZ)V

    .line 365
    return-void

    .line 355
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    goto :goto_0
.end method


# virtual methods
.method public dismissDetailsLayout()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    move-result v0

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    .line 92
    :cond_1
    return-void
.end method

.method public reloadDetails()V
    .locals 3

    .prologue
    .line 96
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mSource:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;->setIndex()I

    move-result v1

    .line 97
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mSource:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 99
    .local v0, "details":Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    if-eqz v0, :cond_0

    .line 100
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mIndex:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    if-eq v2, v0, :cond_0

    .line 101
    :cond_2
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mIndex:I

    .line 102
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    .line 103
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->setDetails(Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V

    goto :goto_0
.end method

.method public reloadDetails(ZI)V
    .locals 3
    .param p1, "isRotate"    # Z
    .param p2, "orientation"    # I

    .prologue
    .line 400
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mSource:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;->setIndex()I

    move-result v1

    .line 401
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mSource:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;->getDetails()Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 403
    .local v0, "details":Lcom/lenovo/scg/gallery3d/data/MediaDetails;
    if-eqz v0, :cond_0

    .line 404
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mIndex:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    if-eq v2, v0, :cond_0

    .line 405
    :cond_2
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mIndex:I

    .line 406
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDetails:Lcom/lenovo/scg/gallery3d/data/MediaDetails;

    .line 408
    if-eqz p1, :cond_3

    .line 409
    invoke-direct {p0, v0, p2}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->showRotateDialog(Lcom/lenovo/scg/gallery3d/data/MediaDetails;I)V

    goto :goto_0

    .line 411
    :cond_3
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->setDetails(Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V

    goto :goto_0
.end method

.method public setCloseListener(Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mListener:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;

    .line 323
    return-void
.end method

.method public setOrientationIndicator(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const v4, 0x7f09010e

    const v3, 0x7f09010d

    .line 369
    rem-int/lit16 v1, p1, 0xb4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    .line 372
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setOrientation(IZ)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    rem-int/lit16 v1, p1, 0xb4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 375
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090483

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 376
    .local v0, "detailsMaxHeight":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    .line 381
    .end local v0    # "detailsMaxHeight":I
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setOrientation(IZ)V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setDetailsParentWidthHeight(II)V

    goto :goto_1
.end method

.method public show()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->reloadDetails()V

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 80
    :cond_0
    return-void
.end method

.method public showRotateDialog(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->reloadDetails(ZI)V

    .line 396
    return-void
.end method
