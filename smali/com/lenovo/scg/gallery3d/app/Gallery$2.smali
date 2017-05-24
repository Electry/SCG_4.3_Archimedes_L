.class Lcom/lenovo/scg/gallery3d/app/Gallery$2;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/Gallery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/Gallery;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$2;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/Gallery$2;->this$0:Lcom/lenovo/scg/gallery3d/app/Gallery;

    # getter for: Lcom/lenovo/scg/gallery3d/app/Gallery;->mLeGaVersionCheckDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/Gallery;->access$000(Lcom/lenovo/scg/gallery3d/app/Gallery;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 305
    return-void
.end method
