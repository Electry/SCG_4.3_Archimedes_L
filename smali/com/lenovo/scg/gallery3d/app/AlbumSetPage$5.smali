.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$5;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 542
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 548
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 544
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$5;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->pickAlbum(I)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$1400(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;I)V

    .line 550
    return-void

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
