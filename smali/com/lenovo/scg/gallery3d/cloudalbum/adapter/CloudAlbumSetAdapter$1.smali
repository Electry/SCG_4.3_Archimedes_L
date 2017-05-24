.class Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;
.super Ljava/lang/Object;
.source "CloudAlbumSetAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;I)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 229
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

    if-nez v2, :cond_0

    .line 244
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isMultMode:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 232
    .local v0, "imageSelectIcon":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->val$position:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmIsSelect()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 233
    .local v1, "isSelected":Z
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->val$position:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmIsSelect(Z)V

    .line 234
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    :goto_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;->onSelect(Z)V

    goto :goto_0

    .end local v1    # "isSelected":Z
    :cond_1
    move v1, v3

    .line 232
    goto :goto_1

    .restart local v1    # "isSelected":Z
    :cond_2
    move v3, v4

    .line 235
    goto :goto_2

    .line 237
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 242
    .end local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    .end local v1    # "isSelected":Z
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v3, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Ljava/util/List;

    move-result-object v2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->val$position:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Ljava/util/List;

    move-result-object v2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$1;->val$position:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v5, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;->onClick(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
