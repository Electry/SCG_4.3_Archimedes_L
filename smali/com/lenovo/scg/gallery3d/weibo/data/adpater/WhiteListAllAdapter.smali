.class public Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;
.super Landroid/widget/BaseAdapter;
.source "WhiteListAllAdapter.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetTaskDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MSG_DATA_CHANGE:I = 0x1

.field private static final MSG_SET_PHOTO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WhiteListAllAdapter"

.field private static final THREAD_MAX_SIZE:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataCollection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 215
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private loadPhoto(Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "user"    # Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    .param p2, "imageview"    # Landroid/widget/ImageView;

    .prologue
    .line 146
    if-nez p2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const v1, 0x7f020a10

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getUserHeadAync(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$readPictureListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    .local v0, "bmpHead":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public addDataCollection(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public clearDataCollection()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 110
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 117
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401b6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;)V

    .line 119
    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;
    const v4, 0x7f100aaa

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;->mPhotoView:Landroid/widget/ImageView;

    .line 120
    const v4, 0x7f100aab

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 121
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 122
    const v4, 0x7f100aac

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;->mOptionView:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    .line 131
    .local v3, "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "name":Ljava/lang/String;
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    const v2, 0x7f0209d5

    .line 136
    .local v2, "resId":I
    :goto_1
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;->mOptionView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;->mPhotoView:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->loadPhoto(Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;Landroid/widget/ImageView;)V

    .line 141
    return-object p2

    .line 125
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "resId":I
    .end local v3    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;
    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter$ViewHolder;
    goto :goto_0

    .line 135
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :cond_1
    const v2, 0x7f0209d4

    goto :goto_1
.end method

.method public onTaskDone(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "resultType"    # Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;
    .param p2, "objData"    # Ljava/lang/Object;
    .param p3, "userContext"    # Ljava/lang/Object;

    .prologue
    .line 188
    const-string v7, "WhiteListAllAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTaskDone, EnumResultType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v7, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->RESULT_TYPE_SUCCEEDED:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;

    if-eq p1, v7, :cond_1

    .line 191
    const-string v7, "WhiteListAllAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WhiteListAllAdapter onTaskDone get bitmap error,result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumResultType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local p2    # "objData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local p2    # "objData":Ljava/lang/Object;
    :cond_1
    :try_start_0
    check-cast p2, [B

    .end local p2    # "objData":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [B

    move-object v2, v0

    .line 197
    .local v2, "data":[B
    move-object v0, p3

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;

    move-object v6, v0

    .line 198
    .local v6, "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getPhotoUrl()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "photoUrl":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;->getScreenName()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v7

    invoke-virtual {v7, v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;)Z

    .line 202
    const/4 v7, 0x0

    array-length v8, v2

    const/4 v9, 0x2

    invoke-static {v2, v7, v8, v9}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 203
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 204
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;

    move-result-object v7

    invoke-virtual {v7, v1, v5, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/WbDataCache;->putUserHead(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "data":[B
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "photoUrl":Ljava/lang/String;
    .end local v6    # "user":Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "WhiteListAllAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WhiteListAllAdapter onTaskDone write or decode error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataCollection(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    .line 58
    :goto_0
    if-nez p1, :cond_1

    .line 63
    :goto_1
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->mDataCollection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public updateShield(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "isshield"    # Z

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/WhiteListAllAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;

    .line 86
    .local v0, "user":Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;
    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->setSelected(Z)V

    .line 87
    const-string v1, "WhiteListAllAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateShield, name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
