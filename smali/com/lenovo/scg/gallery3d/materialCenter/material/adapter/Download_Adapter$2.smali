.class Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;
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


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;I)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;->val$arg0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    .line 144
    const v0, 0x7f02080c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter;->mArrayStatus:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$2;->val$arg0:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/gallery3d/materialCenter/material/adapter/Download_Adapter$View_Holder;->img_select:Z

    .line 147
    const v0, 0x7f02080b

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
