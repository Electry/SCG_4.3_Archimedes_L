.class Lcom/lenovo/scg/gallery3d/app/SlideshowPage$2;
.super Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->showPendingBitmap()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->access$100(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)V

    .line 161
    :goto_0
    return-void

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SlideshowPage$2;->this$0:Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->loadNextBitmap()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;->access$200(Lcom/lenovo/scg/gallery3d/app/SlideshowPage;)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
