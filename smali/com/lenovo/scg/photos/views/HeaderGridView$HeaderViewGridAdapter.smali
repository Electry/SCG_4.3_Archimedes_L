.class Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;
.super Ljava/lang/Object;
.source "HeaderGridView.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/views/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewGridAdapter"
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 243
    iput-object p2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 244
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 252
    return-void
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;

    .line 276
    .local v1, "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    iget-boolean v2, v1, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 277
    const/4 v2, 0x0

    .line 281
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 311
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 312
    iget-boolean v1, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 343
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    .line 344
    iget v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    .line 345
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;

    iget-object v3, v3, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 356
    :goto_0
    return-object v3

    .line 347
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 351
    :cond_1
    sub-int v1, p1, v2

    .line 352
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 353
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 354
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 355
    if-ge v1, v0, :cond_2

    .line 356
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 360
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 366
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 367
    sub-int v1, p1, v2

    .line 368
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 369
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 370
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 373
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 420
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    iget v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v3, p1, v3

    if-eqz v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 432
    :goto_0
    return v3

    .line 422
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 424
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    if-lt p1, v2, :cond_2

    .line 425
    sub-int v1, p1, v2

    .line 426
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 427
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 428
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    goto :goto_0

    .line 432
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v4, v5

    .line 388
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_2

    .line 389
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;

    iget-object v2, v4, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 390
    .local v2, "headerViewContainer":Landroid/view/View;
    iget v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_0

    .line 410
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :goto_0
    return-object v2

    .line 393
    .restart local v2    # "headerViewContainer":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_1

    .line 394
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 398
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 399
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v2, p2

    .line 400
    goto :goto_0

    .line 405
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :cond_2
    sub-int v1, p1, v3

    .line 406
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 407
    .local v0, "adapterCount":I
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    .line 408
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 409
    if-ge v1, v0, :cond_3

    .line 410
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 414
    :cond_3
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 322
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    .line 323
    iget v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    div-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 332
    :goto_0
    return v3

    .line 323
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 327
    :cond_1
    sub-int v1, p1, v2

    .line 328
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 329
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 331
    if-ge v1, v0, :cond_2

    .line 332
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 336
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 474
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 449
    :cond_0
    return-void
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;

    .line 287
    .local v1, "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    iget-object v2, v1, Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 288
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 290
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 292
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 293
    const/4 v2, 0x1

    .line 297
    .end local v1    # "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    :goto_1
    return v2

    .line 285
    .restart local v1    # "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "info":Lcom/lenovo/scg/photos/views/HeaderGridView$FixedViewInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setNumColumns(I)V
    .locals 2
    .param p1, "numColumns"    # I

    .prologue
    .line 264
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_1

    .line 268
    iput p1, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mNumColumns:I

    .line 269
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    .line 271
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/HeaderGridView$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 457
    :cond_0
    return-void
.end method
