.class Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;
.super Ljava/lang/Object;
.source "IngestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mLastCheckedPosition:I
    invoke-static {v0, p3}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$002(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;I)I

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$100(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$100(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p3, v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setItemChecked(IZ)V

    .line 115
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
