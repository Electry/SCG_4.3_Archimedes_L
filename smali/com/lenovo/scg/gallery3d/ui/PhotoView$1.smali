.class Lcom/lenovo/scg/gallery3d/ui/PhotoView$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/PhotoView;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 1
    .param p1, "v"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onUndoDeleteImage()V

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/PhotoView;->hideUndoBar()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->access$100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    .line 486
    return-void
.end method
