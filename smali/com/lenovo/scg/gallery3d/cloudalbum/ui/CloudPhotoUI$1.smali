.class Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;
.super Ljava/lang/Object;
.source "CloudPhotoUI.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->dealwithEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckOne(Z)V
    .locals 0
    .param p1, "isSelect"    # Z

    .prologue
    .line 192
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 6
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionBarLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionBarLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 148
    .local v0, "photoName":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    # setter for: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mClickPhotoId:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mIsFromSharedPhoto:Z
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->getmPhotoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoName()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    if-eqz v0, :cond_1

    .line 156
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "photoName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 158
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->isShowPhotoEditBar()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showPhotoBar(Z)V

    .line 188
    :cond_2
    :goto_1
    return-void

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mClickPhotoId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->getClickPhotoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showHeadBar(Z)V

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setPhotoTile(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showActionbar(Z)V

    .line 170
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mIsFromShared:Z

    if-eqz v1, :cond_6

    .line 172
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showPhotoEditView(Z)V

    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showOutsideBar(Z)V

    goto :goto_1

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setEnableOutsideView(Z)V

    goto :goto_1

    .line 180
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 181
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showPhotoEditView(Z)V

    goto :goto_1

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setEnablePhotoEditView(Z)V

    goto :goto_1
.end method

.method public onDownLoad()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method
