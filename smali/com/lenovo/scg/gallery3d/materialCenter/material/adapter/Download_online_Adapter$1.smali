.class Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;
.super Ljava/lang/Object;
.source "Download_online_Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

.field final synthetic val$arg0:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;I)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->val$arg0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->flag:Ljava/lang/Boolean;

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_btn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter;->mArrStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$ViewHolder;->download_progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    new-instance v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;-><init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_online_Adapter$1$1;->start()V

    .line 199
    return-void
.end method
