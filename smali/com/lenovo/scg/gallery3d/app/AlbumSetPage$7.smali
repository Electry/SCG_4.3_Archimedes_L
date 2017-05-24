.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$7;
.super Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SimpleListener;
.source "AlbumSetPage.java"


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
    .line 790
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloudSingleTapUp()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onCloudSingleTapUp()V

    .line 816
    return-void
.end method

.method public onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$1600(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V

    .line 795
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 809
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onLongTap(I)V

    .line 810
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onSingleTapUp(I)V

    .line 805
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 799
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$7;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$1700(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Z)V

    .line 800
    return-void
.end method
