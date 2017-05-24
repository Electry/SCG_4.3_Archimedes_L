.class Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1$1;
.super Ljava/lang/Object;
.source "BrushEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->onLoadFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1$1;->this$1:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1$1;->this$1:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1$1;->this$1:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->finish()V

    .line 173
    return-void
.end method
