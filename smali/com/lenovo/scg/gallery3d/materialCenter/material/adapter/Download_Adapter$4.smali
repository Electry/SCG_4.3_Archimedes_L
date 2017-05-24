.class Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;
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

.field final synthetic val$arg0:I

.field final synthetic val$download_local_topimg:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->val$arg0:I

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->val$download_local_topimg:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->pHolder:Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/Download_localActivity$ViewHolder;->bottom_lin:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, p1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->init_login_dialog(Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 178
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->val$download_local_topimg:Landroid/view/View;

    const v1, 0x7f02080c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$4;->val$download_local_topimg:Landroid/view/View;

    const v1, 0x7f02080b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
