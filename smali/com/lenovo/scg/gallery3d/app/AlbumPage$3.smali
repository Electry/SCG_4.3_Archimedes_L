.class Lcom/lenovo/scg/gallery3d/app/AlbumPage$3;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumPage;->backAlbumPage()V
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
    .line 361
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->dismiss()V

    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # getter for: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->mAlbumActionBar:Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$200(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/AlbumActionBar;->hideActionBar()V

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$3;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->onUpPressed()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$1300(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    .line 366
    return-void
.end method
