.class Lcom/lenovo/scg/gallery3d/app/ManageCachePage$4;
.super Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SimpleListener;
.source "ManageCachePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotView$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->onDown(I)V
    invoke-static {v0, p1}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->access$1000(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;I)V

    .line 319
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 1
    .param p1, "slotIndex"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->onSingleTapUp(I)V

    .line 329
    return-void
.end method

.method public onUp(Z)V
    .locals 1
    .param p1, "followedByLongPress"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/ManageCachePage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/ManageCachePage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->onUp()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/ManageCachePage;->access$1100(Lcom/lenovo/scg/gallery3d/app/ManageCachePage;)V

    .line 324
    return-void
.end method
