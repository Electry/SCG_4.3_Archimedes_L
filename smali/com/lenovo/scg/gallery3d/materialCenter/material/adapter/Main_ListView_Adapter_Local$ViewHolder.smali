.class public final Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;
.super Ljava/lang/Object;
.source "Main_ListView_Adapter_Local.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field linearLayout_top:Landroid/widget/LinearLayout;

.field main_list_img_bottom:Landroid/widget/ImageView;

.field ml:Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;

.field mt:Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

.field topnum:Landroid/widget/TextView;

.field type_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->mt:Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType;

    .line 113
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Main_ListView_Adapter_Local$ViewHolder;->ml:Lcom/lenovo/scg/gallery3d/materialCenter/material/model/MaterialType_local;

    return-void
.end method
