.class Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$12;
.super Ljava/lang/Object;
.source "PuzzleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->showBadPictureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1010
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1011
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$400(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;->access$400(Lcom/lenovo/scg/gallery3d/puzzle/PuzzleActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1014
    :cond_0
    return-void
.end method
