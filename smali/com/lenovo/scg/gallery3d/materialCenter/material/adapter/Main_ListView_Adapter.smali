.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;
.super Landroid/widget/BaseAdapter;
.source "Main_ListView_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field isOnline:Z

.field mArrMaterialType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field materialTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;",
            ">;"
        }
    .end annotation
.end field

.field materialType_local:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOnline"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->materialTypeList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->materialType_local:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->mArrMaterialType:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->context:Landroid/content/Context;

    .line 55
    sget-object v0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/cache/MemoryCache;->materialTypeList:Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->materialTypeList:Ljava/util/List;

    .line 56
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->isOnline:Z

    .line 63
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->mArrMaterialType:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->mArrMaterialType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x4

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;
    if-nez p2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Landroid/widget/LinearLayout;

    .line 85
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;)V

    .line 86
    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;
    const v2, 0x7f100661

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;->linearLayout_top:Landroid/widget/LinearLayout;

    .line 87
    const v2, 0x7f100660

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;->main_list_img_bottom:Landroid/widget/ImageView;

    .line 88
    const v2, 0x7f100663

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;->type_name:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f100662

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;->topnum:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->mArrMaterialType:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;

    .line 98
    .local v1, "typeCur":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;->main_list_img_bottom:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;->type_name:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->sCaption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;->mt:Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;

    iget v3, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;->setmId(I)V

    .line 101
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;->linearLayout_top:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;->topnum:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const v2, 0x7f100004

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 106
    return-object p2

    .line 93
    .end local v1    # "typeCur":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;
    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter$ViewHolder;
    goto :goto_0
.end method

.method public setTypeArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter;->mArrMaterialType:Ljava/util/ArrayList;

    .line 35
    return-void
.end method
