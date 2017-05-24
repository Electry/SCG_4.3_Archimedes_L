.class Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$2;
.super Ljava/lang/Object;
.source "BrushEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 229
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$400(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    return-void
.end method
