.class Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$3;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->showRotateDialog(Lcom/lenovo/scg/gallery3d/data/MediaDetails;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$400(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$400(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mListener:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$100(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mListener:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$100(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;->onClose()V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$402(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .line 347
    return-void
.end method
