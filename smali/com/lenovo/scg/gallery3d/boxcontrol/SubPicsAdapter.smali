.class public Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubPicsAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView$OnDeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_IMAGE:I


# instance fields
.field private iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

.field private mAdapterHandler:Landroid/os/Handler;

.field private mAdapterView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mIconRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/Vector",
            "<",
            "Lcom/lenovo/scg/gallery3d/boxcontrol/Image;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImageListener:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

.field private mInflate:Landroid/view/LayoutInflater;

.field private mIsFromGif:Z

.field private mIsReplaceImage:Z

.field private mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;

.field private mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIsReplaceImage:Z

    .line 60
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIsFromGif:Z

    .line 229
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mAdapterHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$3;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mImageListener:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

    .line 63
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIconRecords:Ljava/util/Map;

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mInflate:Landroid/view/LayoutInflater;

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIsReplaceImage:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->refreshIcon(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mAdapterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private refreshIcon(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;)V
    .locals 6
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;

    .prologue
    .line 245
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIconRecords:Ljava/util/Map;

    iget-object v5, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->image:Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 246
    .local v1, "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    if-nez v1, :cond_1

    .line 260
    :cond_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 248
    .local v0, "data":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mAdapterView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 250
    .local v3, "v":Landroid/widget/ImageView;
    iget-object v4, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 252
    if-eqz v3, :cond_2

    .line 253
    iget-object v4, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ImageObject;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private saveIconRecords(Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIconRecords:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 264
    .local v0, "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 266
    .restart local v0    # "datas":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/lenovo/scg/gallery3d/boxcontrol/Image;>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIconRecords:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->close()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .line 227
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    if-nez p2, :cond_0

    .line 111
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mInflate:Landroid/view/LayoutInflater;

    const v7, 0x7f040027

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "adapterView":Landroid/view/View;
    :goto_0
    const v6, 0x7f1000a9

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 116
    .local v4, "imageView":Landroid/widget/ImageView;
    const v6, 0x7f10011f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 117
    .local v3, "imageSelectIcon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-interface {v6, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v2

    .end local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    check-cast v2, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 118
    .restart local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    if-nez v2, :cond_1

    .line 196
    :goto_1
    return-object v0

    .line 113
    .end local v0    # "adapterView":Landroid/view/View;
    .end local v3    # "imageSelectIcon":Landroid/widget/ImageView;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .restart local v0    # "adapterView":Landroid/view/View;
    goto :goto_0

    .line 121
    .restart local v3    # "imageSelectIcon":Landroid/widget/ImageView;
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 128
    new-instance v6, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;

    invoke-direct {v6, p0, v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->saveIconRecords(Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    .line 188
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    move-result-object v5

    .line 189
    .local v5, "resManager":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->getImageDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 191
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 124
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "resManager":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 193
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "resManager":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mImageListener:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;

    invoke-virtual {v5, v2, v6, v7}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->loadImage(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;Landroid/graphics/drawable/Drawable;Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$DrawableListener;)V

    goto :goto_1
.end method

.method public onDeleteListener(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V
    .locals 3
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 214
    .local v0, "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    if-eqz v0, :cond_0

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 216
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;

    invoke-interface {v1, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;->onPhotoSelectedChange(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    .line 217
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->notifyDataSetChanged()V

    .line 220
    .end local v0    # "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_0
    return-void
.end method

.method public setAdapterView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mAdapterView:Landroid/view/View;

    .line 201
    return-void
.end method

.method public setFromGif(Z)V
    .locals 0
    .param p1, "mIsFromGif"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIsFromGif:Z

    .line 290
    return-void
.end method

.method public setIamgeList(Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)V
    .locals 5
    .param p1, "iamgeList"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 87
    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 88
    .local v3, "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 91
    .local v2, "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 92
    .restart local v3    # "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    if-eqz v3, :cond_1

    .line 93
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    goto :goto_1

    .line 96
    .end local v2    # "image":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    .end local v3    # "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_2
    return-void
.end method

.method public setmIsReplaceImage(Z)V
    .locals 0
    .param p1, "mIsReplaceImage"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mIsReplaceImage:Z

    .line 286
    return-void
.end method

.method public setmOnPhotoSelectedChangeListener(Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;)V
    .locals 0
    .param p1, "mOnPhotoSelectedChangeListener"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter$OnPhotoSelectedChangeListener;

    .line 205
    return-void
.end method

.method public setmSelectPhotoView(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;)V
    .locals 0
    .param p1, "mSelectPhotoView"    # Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    .line 209
    return-void
.end method

.method public updateSelectedState()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->iamgeList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;->getImageAt(I)Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 101
    .local v1, "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "img":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    :cond_0
    return-void
.end method
