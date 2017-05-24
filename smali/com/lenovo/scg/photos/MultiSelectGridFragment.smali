.class public abstract Lcom/lenovo/scg/photos/MultiSelectGridFragment;
.super Landroid/app/Fragment;
.source "MultiSelectGridFragment.java"

# interfaces
.implements Lcom/lenovo/scg/photos/MultiChoiceManager$Delegate;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/widget/TextView;

.field mGrid:Landroid/widget/GridView;

.field mGridContainer:Landroid/view/View;

.field mGridShown:Z

.field private final mHandler:Landroid/os/Handler;

.field mHost:Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/lenovo/scg/photos/MultiSelectGridFragment$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment$1;-><init>(Lcom/lenovo/scg/photos/MultiSelectGridFragment;)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 64
    return-void
.end method

.method private ensureGrid()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 277
    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    .line 320
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 281
    .local v3, "root":Landroid/view/View;
    if-nez v3, :cond_1

    .line 282
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Content view not yet created"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_1
    instance-of v4, v3, Landroid/widget/GridView;

    if-eqz v4, :cond_4

    .line 285
    check-cast v3, Landroid/widget/GridView;

    .end local v3    # "root":Landroid/view/View;
    iput-object v3, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    .line 305
    :cond_2
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridShown:Z

    .line 306
    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 307
    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mHost:Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;

    invoke-interface {v5}, Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;->getMultiChoiceManager()Lcom/lenovo/scg/photos/MultiChoiceManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 308
    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_8

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 310
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 311
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 319
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 287
    .restart local v3    # "root":Landroid/view/View;
    :cond_4
    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 288
    .local v1, "empty":Landroid/view/View;
    if-eqz v1, :cond_5

    instance-of v4, v1, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 289
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "empty":Landroid/view/View;
    iput-object v1, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mEmptyView:Landroid/widget/TextView;

    .line 291
    :cond_5
    const v4, 0x7f1000d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    .line 292
    const v4, 0x7f1000d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridContainer:Landroid/view/View;

    .line 293
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 294
    .local v2, "rawGridView":Landroid/view/View;
    instance-of v4, v2, Landroid/widget/GridView;

    if-nez v4, :cond_6

    .line 295
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Content has view with id attribute \'android.R.id.list\' that is not a GridView class"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    :cond_6
    check-cast v2, Landroid/widget/GridView;

    .end local v2    # "rawGridView":Landroid/view/View;
    iput-object v2, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    .line 298
    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    if-nez v4, :cond_7

    .line 299
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Your content must have a GridView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 301
    :cond_7
    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 302
    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 315
    .end local v3    # "root":Landroid/view/View;
    :cond_8
    iget-object v4, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 316
    invoke-direct {p0, v6, v6}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->setGridShown(ZZ)V

    goto :goto_2
.end method

.method private setGridShown(ZZ)V
    .locals 6
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->ensureGrid()V

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridShown:Z

    if-ne v0, p1, :cond_1

    .line 267
    :goto_0
    return-void

    .line 245
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridShown:Z

    .line 246
    if-eqz p1, :cond_3

    .line 247
    if-eqz p2, :cond_2

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 257
    :cond_3
    if-eqz p2, :cond_4

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 264
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->ensureGrid()V

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public getPathForItemAtPosition(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemCount()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->ensureGrid()V

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->ensureGrid()V

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    check-cast p1, Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mHost:Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mHost:Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;

    invoke-interface {v1}, Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;->getMultiChoiceManager()Lcom/lenovo/scg/photos/MultiChoiceManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const v0, 0x7f04010e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iput-object v2, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridShown:Z

    .line 111
    iput-object v2, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mEmptyView:Landroid/widget/TextView;

    .line 112
    iput-object v2, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridContainer:Landroid/view/View;

    iput-object v2, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mProgressContainer:Landroid/view/View;

    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 114
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mHost:Lcom/lenovo/scg/photos/MultiChoiceManager$Provider;

    .line 92
    return-void
.end method

.method public onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "g"    # Landroid/widget/GridView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 128
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v1, p1

    check-cast v1, Landroid/widget/GridView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V

    .line 347
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->ensureGrid()V

    .line 101
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 134
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    .line 135
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 136
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    if-eqz v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-boolean v3, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGridShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->setGridShown(ZZ)V

    .line 144
    :cond_1
    return-void

    .end local v0    # "hadAdapter":Z
    :cond_2
    move v0, v2

    .line 134
    goto :goto_0
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->ensureGrid()V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 195
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mEmptyText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setGridShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->setGridShown(ZZ)V

    .line 216
    return-void
.end method

.method public setGridShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->setGridShown(ZZ)V

    .line 224
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->ensureGrid()V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 155
    return-void
.end method
