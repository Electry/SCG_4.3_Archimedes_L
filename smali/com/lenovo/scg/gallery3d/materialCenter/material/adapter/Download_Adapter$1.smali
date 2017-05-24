.class Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$1;
.super Ljava/lang/Object;
.source "Download_Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "download_edit_btn"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->bottom_lin:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->bottom_lin:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->bottom_lin:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
