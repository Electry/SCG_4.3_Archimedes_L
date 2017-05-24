.class public Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
.super Landroid/widget/BaseAdapter;
.source "Main_ListView_Adapter_Local.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mArry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;",
            ">;"
        }
    .end annotation
.end field

.field private materialType_locals:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->mArry:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->context:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->mArry:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->mArry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x4

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;
    if-nez p2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    check-cast p2, Landroid/widget/LinearLayout;

    .line 62
    .restart local p2    # "convertView":Landroid/view/View;
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;)V

    .line 63
    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;
    const v2, 0x7f100661

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->linearLayout_top:Landroid/widget/LinearLayout;

    .line 64
    const v2, 0x7f100660

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->main_list_img_bottom:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f100663

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->type_name:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f100662

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->topnum:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->mArry:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;

    .line 74
    .local v1, "typeCur":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->main_list_img_bottom:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->type_name:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;->sCaption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->ml:Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;

    iget-object v3, v1, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;->setmTypeName(Ljava/lang/String;)V

    .line 77
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->linearLayout_top:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->topnum:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    return-object p2

    .line 70
    .end local v1    # "typeCur":Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;
    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;

    .restart local v0    # "holder":Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;
    goto :goto_0
.end method

.method public getmArry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->mArry:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmArry(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "mArry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$MaterialTypeInfo_local;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;->mArry:Ljava/util/ArrayList;

    .line 99
    return-void
.end method
