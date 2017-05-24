.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10009b

    if-ne v0, v1, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0661

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->onMenuItemClicked(Ljava/lang/String;Z)V

    .line 1310
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->dismissPopupWindow()V

    .line 1311
    return-void

    .line 1286
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100084

    if-ne v0, v1, :cond_2

    .line 1287
    const-string v0, "AlbumSetPage"

    const-string/jumbo v1, "share to qiezi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0931

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->shareToOthers(Ljava/lang/String;)V

    goto :goto_0

    .line 1289
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10008f

    if-ne v0, v1, :cond_3

    .line 1290
    const-string v0, "AlbumSetPage"

    const-string/jumbo v1, "share to mms"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f092f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->shareToOthers(Ljava/lang/String;)V

    goto :goto_0

    .line 1292
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100089

    if-ne v0, v1, :cond_4

    .line 1293
    const-string v0, "AlbumSetPage"

    const-string/jumbo v1, "share to weixin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0935

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->shareToOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1295
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10008d

    if-ne v0, v1, :cond_5

    .line 1296
    const-string v0, "AlbumSetPage"

    const-string/jumbo v1, "share to weibo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0934

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->shareToOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1298
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10008b

    if-ne v0, v1, :cond_6

    .line 1299
    const-string v0, "AlbumSetPage"

    const-string/jumbo v1, "share to friend circle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f092e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->shareToOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1301
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100091

    if-ne v0, v1, :cond_7

    .line 1302
    const-string v0, "AlbumSetPage"

    const-string/jumbo v1, "share to qq space"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1305
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100093

    if-ne v0, v1, :cond_0

    .line 1306
    const-string v0, "AlbumSetPage"

    const-string/jumbo v1, "share to more"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0930

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->shareToOthers(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mShareToOthersMore:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2802(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Z)Z

    goto/16 :goto_0
.end method
