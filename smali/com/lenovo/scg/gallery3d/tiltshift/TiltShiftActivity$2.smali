.class Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$2;
.super Ljava/lang/Object;
.source "TiltShiftActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->showOriginalImageIsDeletedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 361
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->setResult(ILandroid/content/Intent;)V

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftActivity;->finish()V

    .line 364
    return-void
.end method
