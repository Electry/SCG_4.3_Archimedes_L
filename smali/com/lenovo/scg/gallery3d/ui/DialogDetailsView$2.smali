.class Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$2;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->setDetails(Lcom/lenovo/scg/gallery3d/data/MediaDetails;)V
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
    .line 124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mListener:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$100(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->mListener:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;->access$100(Lcom/lenovo/scg/gallery3d/ui/DialogDetailsView;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;->onClose()V

    .line 131
    :cond_0
    return-void
.end method
