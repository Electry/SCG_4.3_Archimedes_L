.class public Lcom/lenovo/scg/photos/AlbumFragment;
.super Lcom/lenovo/scg/photos/MultiSelectGridFragment;
.source "AlbumFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/scg/photos/MultiSelectGridFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field protected static final KEY_ALBUM_TITLE:Ljava/lang/String; = "AlbumTitle"

.field protected static final KEY_ALBUM_URI:Ljava/lang/String; = "AlbumUri"

.field private static final LOADER_ALBUM:I = 0x1


# instance fields
.field private mAdapter:Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;

.field private mAlbumPath:Ljava/lang/String;

.field private mAlbumTitle:Ljava/lang/String;

.field private mHeaderView:Landroid/view/View;

.field private mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/photos/shims/LoaderCompatShim",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mSubItemUriTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    return-void
.end method

.method private updateHeaderView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 87
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04001b

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/photos/views/HeaderGridView;

    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v5, v9, v8}, Lcom/lenovo/scg/photos/views/HeaderGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 92
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f1000d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 95
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f1000d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, "title":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f1000d9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 97
    .local v2, "subtitle":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAdapter:Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {v4}, Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;->getCount()I

    move-result v0

    .line 99
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110006

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    if-lez v0, :cond_1

    .line 101
    iget-object v4, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;

    iget-object v5, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAdapter:Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Lcom/lenovo/scg/photos/shims/LoaderCompatShim;->drawableForItem(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_1
    return-void
.end method


# virtual methods
.method public deleteItemWithPath(Ljava/lang/Object;)V
    .locals 1
    .param p1, "itemPath"    # Ljava/lang/Object;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/photos/shims/LoaderCompatShim;->deleteItemWithPath(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public getItemMediaType(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getItemSupportedOperations(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getItemUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/lenovo/scg/photos/shims/LoaderCompatShim;->uriForItem(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/lenovo/scg/photos/shims/LoaderCompatShim;->getPathForItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSubItemUrisForItem(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/lenovo/scg/photos/shims/LoaderCompatShim;->uriForItem(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mSubItemUriTemp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 65
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;

    invoke-direct {v2, v1}, Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAdapter:Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;

    .line 66
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 68
    const-string v2, "AlbumUri"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAlbumPath:Ljava/lang/String;

    .line 69
    const-string v2, "AlbumTitle"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAlbumTitle:Ljava/lang/String;

    .line 71
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/lenovo/scg/photos/shims/MediaItemsLoader;

    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAlbumPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/photos/shims/MediaItemsLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .local v0, "loader":Lcom/lenovo/scg/photos/shims/MediaItemsLoader;
    iput-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;

    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAdapter:Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;

    iget-object v2, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;->setDrawableFactory(Lcom/lenovo/scg/photos/shims/LoaderCompatShim;)V

    .line 124
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 76
    const v0, 0x7f04001a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "g"    # Landroid/widget/GridView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 107
    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;

    if-nez v3, :cond_0

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0, p3}, Lcom/lenovo/scg/photos/AlbumFragment;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 112
    .local v1, "item":Landroid/database/Cursor;
    iget-object v3, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mLoaderCompatShim:Lcom/lenovo/scg/photos/shims/LoaderCompatShim;

    invoke-interface {v3, v1}, Lcom/lenovo/scg/photos/shims/LoaderCompatShim;->uriForItem(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v2

    .line 113
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/AlbumFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAdapter:Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 130
    invoke-direct {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->updateHeaderView()V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumFragment;->mAdapter:Lcom/lenovo/scg/photos/adapters/PhotoThumbnailAdapter;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/photos/AlbumFragment;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/photos/AlbumFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/photos/MultiSelectGridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/scg/photos/AlbumFragment;->getGridView()Landroid/widget/GridView;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/scg/photos/shims/MediaItemsLoader;->getThumbnailSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 84
    return-void
.end method
