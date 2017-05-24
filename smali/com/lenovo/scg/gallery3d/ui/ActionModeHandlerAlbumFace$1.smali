.class Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$1;
.super Ljava/lang/Object;
.source "ActionModeHandlerAlbumFace.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->startActionMode()Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;

.field final synthetic val$actionMode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
