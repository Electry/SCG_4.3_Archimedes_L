.class Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$1;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/app/AlbumDataLoader;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->updateEntry()V

    .line 139
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
