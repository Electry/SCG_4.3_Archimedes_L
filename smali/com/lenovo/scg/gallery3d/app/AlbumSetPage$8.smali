.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$8;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->initializeViews()V
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
    .line 821
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
