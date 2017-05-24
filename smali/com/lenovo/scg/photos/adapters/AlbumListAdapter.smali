.class public Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumListAdapter"


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->items:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    iget-object v6, p0, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    .line 59
    .local v5, "viewItem":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    if-nez p2, :cond_0

    .line 60
    iget-object v6, p0, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04012f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "adapterView":Landroid/view/View;
    :goto_0
    const v6, 0x7f100121

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 66
    .local v4, "albumThumbnail":Landroid/widget/ImageView;
    const-string v6, "AlbumListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "viewItem.mThumbBitmap = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v6, v5, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 69
    iget-object v6, v5, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    :goto_1
    const v6, 0x7f100122

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, "albumName":Landroid/widget/TextView;
    iget-object v6, v5, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v6, 0x7f100123

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, "albumImageCount":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-interface {v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v6, 0x7f100124

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, "albumPath":Landroid/widget/TextView;
    iget-object v6, v5, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mAlbumPath:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v5, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mAlbumPath:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 83
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 84
    return-object v0

    .line 62
    .end local v0    # "adapterView":Landroid/view/View;
    .end local v1    # "albumImageCount":Landroid/widget/TextView;
    .end local v2    # "albumName":Landroid/widget/TextView;
    .end local v3    # "albumPath":Landroid/widget/TextView;
    .end local v4    # "albumThumbnail":Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .restart local v0    # "adapterView":Landroid/view/View;
    goto/16 :goto_0

    .line 73
    .restart local v4    # "albumThumbnail":Landroid/widget/ImageView;
    :cond_1
    const v6, 0x7f020896

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;>;"
    iput-object p1, p0, Lcom/lenovo/scg/photos/adapters/AlbumListAdapter;->items:Ljava/util/ArrayList;

    .line 50
    return-void
.end method
