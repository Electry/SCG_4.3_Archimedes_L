.class Lcom/lenovo/scg/gallery3d/ui/RemindDialog$2;
.super Ljava/lang/Object;
.source "RemindDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCancelRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$000(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCancelRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$000(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->dismiss()V

    goto :goto_0
.end method
