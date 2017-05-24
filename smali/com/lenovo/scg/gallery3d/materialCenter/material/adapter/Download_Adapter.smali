.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;
.super Landroid/widget/BaseAdapter;
.source "Download_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private download_btn_del_forone:Landroid/widget/ImageButton;

.field private img_local_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;",
            ">;"
        }
    .end annotation
.end field

.field mArrayStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;",
            ">;"
        }
    .end annotation
.end field

.field private mBusy:Z

.field mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

.field private mImageLoader:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

.field private material_dialog_big_img:Landroid/widget/ImageView;

.field private material_dialog_cancle:Landroid/widget/ImageButton;

.field pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

.field pop:Landroid/widget/PopupWindow;

.field service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mtypeName"    # Ljava/lang/String;
    .param p3, "pHolder"    # Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/GetLocalImgServiceImpl;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/impl/GetLocalImgServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mBusy:Z

    .line 64
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->type:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    .line 67
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mImageLoader:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    .line 68
    return-void
.end method


# virtual methods
.method public confirmDel()V
    .locals 8

    .prologue
    .line 184
    new-instance v1, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    .line 185
    new-instance v6, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$5;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$5;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V

    .line 193
    .local v6, "okRunnable":Ljava/lang/Runnable;
    new-instance v4, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$6;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$6;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V

    .line 202
    .local v4, "cancelRunnable":Ljava/lang/Runnable;
    const/4 v2, 0x0

    .line 203
    .local v2, "confirmMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f110000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mDeleteRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    const v7, 0x104000a

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public del_material_loacal()V
    .locals 6

    .prologue
    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, "imgs":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v2, "vh_del":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    iget-boolean v3, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    if-eqz v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->isDel:Z

    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 282
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    invoke-interface {v3, v4, v5, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;->delAllLocalImgsByTypeName(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z

    .line 284
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    invoke-static {v3, v4, v5, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity;->init_local(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V

    .line 285
    return-void
.end method

.method public del_material_loacal_one()V
    .locals 6

    .prologue
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v1, "imgs":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v2, "vh_del":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    iget-boolean v3, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->isDel:Z

    .line 291
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 299
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 300
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->service:Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    invoke-interface {v3, v4, v5, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/service/GetLocalImgsService;->delAllLocalImgsByTypeName(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)Z

    .line 302
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImageLoader()Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mImageLoader:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f02080b

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 92
    if-nez p2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Landroid/widget/LinearLayout;

    .line 94
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V

    .line 95
    .local v1, "vholder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;
    const v2, 0x7f100463

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_img_bottom:Landroid/widget/ImageButton;

    .line 96
    const v2, 0x7f100464

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_topimg:Landroid/widget/Button;

    .line 97
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_img_bottom:Landroid/widget/ImageButton;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 98
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 99
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    :goto_0
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_topimg:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 106
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_topimg:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_img_bottom:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->getImg_local()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_img_bottom:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->getImg_local()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 110
    iput-boolean v5, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    .line 111
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v3, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;->getmTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->bottom_lin:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 114
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_topimg:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-boolean v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_topimg:Landroid/widget/Button;

    const v3, 0x7f02080c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 124
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_edit_btn:Landroid/widget/Button;

    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$1;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_topimg:Landroid/widget/Button;

    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;

    invoke-direct {v3, p0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->download_btn_del:Landroid/widget/ImageButton;

    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$3;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_topimg:Landroid/widget/Button;

    .line 161
    .local v0, "download_local_topimg":Landroid/view/View;
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_img_bottom:Landroid/widget/ImageButton;

    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;ILandroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-object p2

    .line 103
    .end local v0    # "download_local_topimg":Landroid/view/View;
    .end local v1    # "vholder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    .restart local v1    # "vholder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;
    goto/16 :goto_0

    .line 118
    :cond_2
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_topimg:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 121
    :cond_3
    iget-object v2, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->download_local_topimg:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public init_login_dialog(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 7
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 224
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->context:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 225
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400f9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, "layout":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v4, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pop:Landroid/widget/PopupWindow;

    .line 229
    const v2, 0x7f100667

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->material_dialog_big_img:Landroid/widget/ImageView;

    .line 230
    const v2, 0x7f100669

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->material_dialog_cancle:Landroid/widget/ImageButton;

    .line 231
    const v2, 0x7f100668

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->download_btn_del_forone:Landroid/widget/ImageButton;

    .line 233
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->material_dialog_big_img:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->downloadGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 240
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pop:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 244
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 245
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pop:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->downloadGridView:Landroid/widget/GridView;

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 246
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->material_dialog_cancle:Landroid/widget/ImageButton;

    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$7;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$7;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->download_btn_del_forone:Landroid/widget/ImageButton;

    new-instance v3, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$8;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$8;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    return-void
.end method

.method public setFlagBusy(Z)V
    .locals 0
    .param p1, "busy"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mBusy:Z

    .line 61
    return-void
.end method

.method public setImg_local_List(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "img_local_List":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/materialCenter/material/model/ImageFile_local;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->img_local_List:Ljava/util/List;

    .line 43
    return-void
.end method
