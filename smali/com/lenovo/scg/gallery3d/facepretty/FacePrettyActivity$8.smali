.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$8;
.super Ljava/lang/Object;
.source "FacePrettyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->initFeilds()V
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
    .line 3309
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setResult(ILandroid/content/Intent;)V

    .line 3314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->relaseAllBitmap()V

    .line 3315
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->finish()V

    .line 3316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3317
    return-void
.end method
