.class Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;
.super Ljava/lang/Object;
.source "CloudAlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;I)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 195
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

    if-nez v2, :cond_0

    .line 209
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->isMultMode:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    .local v0, "imageSelectIcon":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->val$position:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmIsSelect()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 199
    .local v1, "isSelected":Z
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->val$position:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmIsSelect(Z)V

    .line 200
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :goto_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;->onSelect(Z)V

    goto :goto_0

    .end local v1    # "isSelected":Z
    :cond_1
    move v1, v3

    .line 198
    goto :goto_1

    .restart local v1    # "isSelected":Z
    :cond_2
    move v3, v4

    .line 201
    goto :goto_2

    .line 203
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 207
    .end local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    .end local v1    # "isSelected":Z
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;->onClick(I)V

    goto :goto_0
.end method
