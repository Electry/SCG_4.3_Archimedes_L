.class Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$3;
.super Ljava/lang/Object;
.source "CropActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->showOriginalImageIsDeletedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 422
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;->finish()V

    .line 425
    return-void
.end method
