.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$13;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1315
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1319
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v2, 0x7f100081

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1320
    .local v1, "tv":Landroid/widget/TextView;
    const v2, 0x7f100080

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1321
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 1322
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onMenuItemSelected(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2900(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->onMenuItemClicked(Ljava/lang/String;Z)V

    .line 1326
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->dismissPopupWindow()V

    .line 1327
    return-void

    .line 1324
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$13;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->shareToOthers(I)V

    goto :goto_0
.end method
