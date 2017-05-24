.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$7;
.super Ljava/lang/Object;
.source "FacePrettyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showOriginalImageIsDeletedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 3101
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3104
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setResult(ILandroid/content/Intent;)V

    .line 3106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->finish()V

    .line 3107
    return-void
.end method
