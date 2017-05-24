.class Lcom/lenovo/scg/gallery3d/app/AlbumPage$8;
.super Lcom/lenovo/scg/gallery3d/ui/SlotView$SimpleListener;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumPage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 977
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$2300(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V

    .line 978
    return-void
.end method

.method public onLongTap(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 992
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onLongTap(I)V

    .line 993
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 987
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onSingleTapUp(I)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$2500(Lcom/lenovo/scg/gallery3d/app/AlbumPage;I)V

    .line 988
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 982
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onUp(Z)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$2400(Lcom/lenovo/scg/gallery3d/app/AlbumPage;Z)V

    .line 983
    return-void
.end method

.method public onUpdateBar(I)V
    .locals 1
    .param p1, "curCount"    # I

    .prologue
    .line 997
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onUpdateBar(I)V

    .line 998
    return-void
.end method
