.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;
.super Ljava/lang/Object;
.source "CloudAlbumUI.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->dealwithEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x0

    .line 167
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-boolean v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mSyncLoadingFinished:Z

    if-nez v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v0

    .line 170
    .local v0, "albumAdapter":Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    const/4 v3, 0x0

    .line 172
    .local v3, "isSame":Z
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mLastPos:I

    if-ne v4, p1, :cond_2

    .line 173
    const/4 v3, 0x1

    .line 178
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iput-boolean v6, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mIsLoadingFinished:Z

    .line 179
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v1, "clickItemInfo":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 182
    .local v2, "cloudPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->getmPhotoList()Ljava/util/List;

    move-result-object v2

    .line 183
    const-string v4, "HWJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v4, "cloud click photo position id"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    const-string v4, "cloud click photo id"

    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "cloudPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 188
    :cond_0
    const-string v4, "cloud click same id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;->startPhotoPage(Landroid/os/Bundle;)V

    .line 194
    .end local v0    # "albumAdapter":Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    .end local v1    # "clickItemInfo":Landroid/os/Bundle;
    .end local v3    # "isSame":Z
    :cond_1
    :goto_1
    return-void

    .line 175
    .restart local v0    # "albumAdapter":Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    .restart local v3    # "isSame":Z
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iput p1, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mLastPos:I

    .line 176
    const/4 v3, 0x0

    goto :goto_0

    .line 192
    .end local v0    # "albumAdapter":Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    .end local v3    # "isSame":Z
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0f023a

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onSelect(Z)V
    .locals 4
    .param p1, "is"    # Z

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setShareAble(Z)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mSyncLoadingFinished:Z

    if-nez v0, :cond_5

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->setSelectMode(Z)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showActionbar(Z)V

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setSelect(II)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToDown(Z)V

    .line 219
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mIsFromShared:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->hideDelItem(Z)V

    .line 222
    :cond_2
    return-void

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setShareAble(Z)V

    goto :goto_0

    .line 210
    :cond_4
    const/4 v0, -0x1

    goto :goto_1

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->setSyncFinishedFlag(Z)V

    goto :goto_2
.end method
