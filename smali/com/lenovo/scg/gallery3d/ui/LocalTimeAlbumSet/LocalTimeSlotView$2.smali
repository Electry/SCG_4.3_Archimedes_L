.class Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$2;
.super Ljava/lang/Object;
.source "LocalTimeSlotView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

.field final synthetic val$listener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$2;->val$listener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeSlotView$2;->val$listener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;->onUserInteractionEnd()V

    .line 624
    return-void
.end method
