.class Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$6;
.super Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SimpleListener;
.source "LocalTimeAlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$6;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$6;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$2600(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;I)V

    .line 767
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$6;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->onLongTap(I)V

    .line 782
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 776
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$6;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->onSingleTapUp(I)V

    .line 777
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 771
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$6;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;Z)V

    .line 772
    return-void
.end method
