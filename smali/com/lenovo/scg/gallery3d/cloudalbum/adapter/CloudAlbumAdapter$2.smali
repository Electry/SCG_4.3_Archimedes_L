.class Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;
.super Ljava/lang/Object;
.source "CloudAlbumAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 212
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0f0272

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-boolean v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mIsSyncFinishedFlag:Z

    if-nez v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->isMultMode:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 220
    .local v0, "imageSelectIcon":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;)Ljava/util/List;

    move-result-object v2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->val$position:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmIsSelect()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    .line 221
    .local v1, "isSelected":Z
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;)Ljava/util/List;

    move-result-object v2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->val$position:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmIsSelect(Z)V

    .line 222
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;->onSelect(Z)V

    .line 243
    .end local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    .end local v1    # "isSelected":Z
    :cond_0
    :goto_3
    return v3

    .restart local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    :cond_1
    move v1, v4

    .line 220
    goto :goto_0

    .restart local v1    # "isSelected":Z
    :cond_2
    move v4, v5

    .line 223
    goto :goto_1

    .line 225
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 231
    .end local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    .end local v1    # "isSelected":Z
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 232
    .restart local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mPhotoList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;)Ljava/util/List;

    move-result-object v2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->val$position:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmIsSelect(Z)V

    .line 233
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 234
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :goto_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;->onSelect(Z)V

    goto :goto_3

    .line 236
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method
