.class Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;
.super Ljava/lang/Object;
.source "CloudAlbumSetAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 247
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iput p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->val$position:I

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

    .line 251
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-boolean v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mIsSyncFinishedFlag:Z

    if-nez v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isMultMode:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 255
    .local v0, "imageSelectIcon":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Ljava/util/List;

    move-result-object v2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->val$position:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmIsSelect()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    .line 256
    .local v1, "isSelected":Z
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Ljava/util/List;

    move-result-object v2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->val$position:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmIsSelect(Z)V

    .line 257
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;->onSelect(Z)V

    .line 278
    .end local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    .end local v1    # "isSelected":Z
    :cond_0
    :goto_3
    return v3

    .restart local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    :cond_1
    move v1, v4

    .line 255
    goto :goto_0

    .restart local v1    # "isSelected":Z
    :cond_2
    move v4, v5

    .line 258
    goto :goto_1

    .line 260
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    move-result-object v2

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 264
    .end local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    .end local v1    # "isSelected":Z
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isSelectFolder:Z
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 266
    .restart local v0    # "imageSelectIcon":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAlbumList:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Ljava/util/List;

    move-result-object v2

    iget v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->val$position:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->setmIsSelect(Z)V

    .line 267
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 268
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    :goto_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mAdapterListener:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;->onSelect(Z)V

    goto :goto_3

    .line 270
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    move-result-object v2

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$2;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;)Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method
