.class Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController$1;
.super Ljava/lang/Object;
.source "PhotoEditActionBarController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->showImageTooSmallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController$1;->this$0:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 317
    return-void
.end method
