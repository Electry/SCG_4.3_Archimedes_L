.class Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;
.super Ljava/lang/Object;
.source "GalleryThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/views/GalleryThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleBin"
.end annotation


# instance fields
.field private mMaxScrap:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;Lcom/lenovo/scg/photos/views/GalleryThumbnailView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView;
    .param p2, "x1"    # Lcom/lenovo/scg/photos/views/GalleryThumbnailView$1;

    .prologue
    .line 778
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;-><init>(Lcom/lenovo/scg/photos/views/GalleryThumbnailView;)V

    return-void
.end method


# virtual methods
.method public addScrap(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 821
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;

    .line 822
    .local v1, "lp":Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 823
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    .line 824
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 826
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v4, v1, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;->position:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 839
    :cond_1
    :goto_0
    return-void

    .line 830
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->this$0:Lcom/lenovo/scg/photos/views/GalleryThumbnailView;

    invoke-virtual {v3}, Lcom/lenovo/scg/photos/views/GalleryThumbnailView;->getChildCount()I

    move-result v0

    .line 831
    .local v0, "childCount":I
    iget v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mMaxScrap:I

    if-le v0, v3, :cond_3

    .line 832
    iput v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mMaxScrap:I

    .line 835
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    iget v4, v1, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$LayoutParams;->viewType:I

    aget-object v2, v3, v4

    .line 836
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mMaxScrap:I

    if-ge v3, v4, :cond_1

    .line 837
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 805
    iget v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mViewTypeCount:I

    .line 806
    .local v1, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 807
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 810
    iget-object v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 812
    :cond_1
    return-void
.end method

.method public clearTransientViews()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 818
    :cond_0
    return-void
.end method

.method public getScrapView(I)Landroid/view/View;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 854
    iget-object v3, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v3, p1

    .line 855
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    const/4 v1, 0x0

    .line 862
    :goto_0
    return-object v1

    .line 859
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 860
    .local v0, "index":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 861
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getTransientStateView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 842
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 843
    const/4 v0, 0x0

    .line 850
    :cond_0
    :goto_0
    return-object v0

    .line 846
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 847
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 848
    iget-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setViewTypeCount(I)V
    .locals 5
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 789
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 790
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have at least one view type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " types reported)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 792
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mViewTypeCount:I

    if-ne p1, v2, :cond_1

    .line 802
    :goto_0
    return-void

    .line 796
    :cond_1
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 797
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 798
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 797
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 800
    :cond_2
    iput p1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mViewTypeCount:I

    .line 801
    iput-object v1, p0, Lcom/lenovo/scg/photos/views/GalleryThumbnailView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    goto :goto_0
.end method
