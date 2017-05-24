.class Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "GalleryThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/views/GalleryThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;Lcom/lenovo/scg/photos/views/GalleryThumbnailView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;
    .param p2, "x1"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView$1;

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;-><init>(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mDataChanged:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->access$202(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;Z)Z

    .line 871
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    iget-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    # getter for: Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mItemCount:I
    invoke-static {v1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->access$400(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)I

    move-result v1

    # setter for: Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mOldItemCount:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->access$302(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;I)I

    .line 872
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    iget-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    # getter for: Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mAdapter:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->access$500(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$GalleryThumbnailAdapter;->getCount()I

    move-result v1

    # setter for: Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mItemCount:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->access$402(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;I)I

    .line 875
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    # getter for: Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mRecycler:Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;
    invoke-static {v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->access$600(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->clearTransientViews()V

    .line 877
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    # getter for: Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->mHasStableIds:Z
    invoke-static {v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->access$700(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    # invokes: Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->recycleAllViews()V
    invoke-static {v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->access$800(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$AdapterDataSetObserver;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    invoke-virtual {v0}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->requestLayout()V

    .line 884
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 888
    return-void
.end method
