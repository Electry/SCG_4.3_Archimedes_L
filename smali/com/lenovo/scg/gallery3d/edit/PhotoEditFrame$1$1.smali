.class Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1$1;
.super Ljava/lang/Object;
.source "PhotoEditFrame.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/edit/SetasListView$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$800(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$800(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1$1;->this$1:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;->access$802(Lcom/lenovo/scg/gallery3d/edit/PhotoEditFrame;Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .line 319
    return-void
.end method
