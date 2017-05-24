.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "TopGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;,
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;
    }
.end annotation


# instance fields
.field private currentSelectID:I

.field private mBitmapsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;

.field private mContext:Landroid/content/Context;

.field private mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field private mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

.field private mGroup:Landroid/view/ViewGroup;

.field mInflater:Landroid/view/LayoutInflater;

.field private mShowSingleImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

.field private thumBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentID"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mBitmapsList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->thumBitmaps:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->currentSelectID:I

    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    .line 117
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->currentSelectID:I

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mShowSingleImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mBitmapsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mClickListener:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mGroup:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mBitmapsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImageSource(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mBitmapsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    if-nez p2, :cond_1

    .line 150
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;)V

    .line 151
    .local v1, "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0401bf

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 152
    const v2, 0x7f100acb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->access$002(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 154
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    :goto_0
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mGroup:Landroid/view/ViewGroup;

    .line 161
    move v0, p1

    .line 162
    .local v0, "bitmapid":I
    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->currentSelectID:I

    if-ne p1, v2, :cond_0

    .line 163
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, -0xff6c30

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 165
    :cond_0
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->thumBitmaps:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    # getter for: Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->item_image:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;->access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;ILcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-object p2

    .line 156
    .end local v0    # "bitmapid":I
    .end local v1    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$ViewHolder;
    goto :goto_0
.end method

.method public getmDataItem()Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    return-object v0
.end method

.method public setOnTopGalleryClickListener(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;)V
    .locals 0
    .param p1, "mOnTopGalleryClickListener"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mClickListener:Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter$OnTopGalleryClickListener;

    .line 61
    return-void
.end method

.method public setmDataItem(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;)V
    .locals 11
    .param p1, "mDataItem"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .param p2, "mImageView"    # Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    .prologue
    const/4 v10, 0x1

    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 70
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mShowSingleImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MatchWidthImageView;

    .line 71
    const-string v7, ""

    .line 74
    .local v7, "uri":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicList()Ljava/util/List;

    move-result-object v3

    .line 76
    .local v3, "mPicInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;>;"
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "allPics":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getScreenName()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "sName":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v2

    .line 82
    .local v2, "dataCache":Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v10, :cond_1

    .line 111
    :cond_0
    return-void

    .line 85
    :cond_1
    const/4 v5, 0x0

    .local v5, "size":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getDEFAULT_PIC_MOD()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v7

    .line 96
    :goto_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    invoke-virtual {v8, v4, v7}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    .local v1, "bmp":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mBitmapsList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v2, v7, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getTimeBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 101
    .local v6, "thumbBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 102
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->thumBitmaps:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getDEFAULT_PIC_MOD()I

    move-result v8

    if-ne v8, v10, :cond_3

    .line 89
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmPicURLs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 104
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "thumbBitmap":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    sget-object v9, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE_THUMBNAL:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {v8, v4, v7, v9}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 105
    invoke-virtual {v2, v7, v4, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putTimeBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/TopGalleryAdapter;->thumBitmaps:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
