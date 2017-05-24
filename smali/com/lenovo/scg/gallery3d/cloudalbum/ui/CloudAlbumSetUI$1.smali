.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;
.super Ljava/lang/Object;
.source "CloudAlbumSetUI.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->dealwithEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "clickId"    # Ljava/lang/String;
    .param p3, "clickName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cloud select folder to upload photo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "get multi folder id"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "get multi folder name"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->setResult(ILandroid/content/Intent;)V

    .line 178
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->finish()V

    .line 202
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-boolean v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mSyncLoadingFinished:Z

    if-nez v3, :cond_0

    .line 181
    const/4 v2, 0x0

    .line 183
    .local v2, "isSame":Z
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mLastPos:I

    if-ne v3, p1, :cond_2

    .line 184
    const/4 v2, 0x1

    .line 189
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iput-boolean v5, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mIsLoadingFinished:Z

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "clickItem":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "clickItem":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 192
    .restart local v1    # "clickItem":Landroid/os/Bundle;
    const-string v3, "cloud click same id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    const-string v3, "cloud click album id"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v3, "cloud click album name"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;->startAlbumPage(Landroid/os/Bundle;)V

    goto :goto_0

    .line 186
    .end local v1    # "clickItem":Landroid/os/Bundle;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iput p1, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mLastPos:I

    .line 187
    const/4 v2, 0x0

    goto :goto_1

    .line 200
    .end local v2    # "isSame":Z
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0f023a

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onSelect(Z)V
    .locals 3
    .param p1, "is"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 206
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setShareAble(Z)V

    .line 208
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setRenameAble(Z)V

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-boolean v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mSyncLoadingFinished:Z

    if-nez v1, :cond_4

    .line 215
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->setSelectMode(Z)V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showActionbar(Z)V

    .line 220
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz p1, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setSelect(II)V

    .line 228
    :cond_1
    :goto_2
    return-void

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setShareAble(Z)V

    .line 211
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setRenameAble(Z)V

    goto :goto_0

    .line 220
    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    .line 223
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    # invokes: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->setSyncFinishedFlag(Z)V

    goto :goto_2
.end method
