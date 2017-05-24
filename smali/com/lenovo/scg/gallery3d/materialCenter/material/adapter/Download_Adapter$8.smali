.class Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$8;
.super Ljava/lang/Object;
.source "Download_Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->init_login_dialog(Landroid/graphics/Bitmap;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$8;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$8;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->del_material_loacal()V

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$8;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->downloadGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$8;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 266
    return-void
.end method
