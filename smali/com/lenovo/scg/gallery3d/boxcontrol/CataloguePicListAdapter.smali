.class public Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CataloguePicListAdapter.java"


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
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->items:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->mContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    .line 55
    .local v6, "viewItem":Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;
    if-nez p2, :cond_0

    .line 56
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040028

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "adapterView":Landroid/view/View;
    :goto_0
    const v7, 0x7f100121

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 61
    .local v4, "albumThumbnail":Landroid/widget/ImageView;
    const v7, 0x7f100125

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 62
    .local v5, "moreBtnView":Landroid/widget/ImageView;
    iget-object v7, v6, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    iget-object v7, v6, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 63
    iget-object v7, v6, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020084

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    const v7, 0x7f100122

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    .local v2, "albumName":Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 73
    iget-object v7, v6, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v7, 0x7f100123

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    .local v1, "albumImageCount":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-interface {v8}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v7, 0x7f100124

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "albumPath":Landroid/widget/TextView;
    iget-object v7, v6, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mAlbumPath:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v6, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mAlbumPath:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 79
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 80
    return-object v0

    .line 58
    .end local v0    # "adapterView":Landroid/view/View;
    .end local v1    # "albumImageCount":Landroid/widget/TextView;
    .end local v2    # "albumName":Landroid/widget/TextView;
    .end local v3    # "albumPath":Landroid/widget/TextView;
    .end local v4    # "albumThumbnail":Landroid/widget/ImageView;
    .end local v5    # "moreBtnView":Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .restart local v0    # "adapterView":Landroid/view/View;
    goto/16 :goto_0

    .line 66
    .restart local v4    # "albumThumbnail":Landroid/widget/ImageView;
    .restart local v5    # "moreBtnView":Landroid/widget/ImageView;
    :cond_1
    const v7, 0x7f020896

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

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
    .line 44
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/CataloguePicListAdapter;->items:Ljava/util/ArrayList;

    .line 45
    return-void
.end method
