.class Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$13;
.super Ljava/lang/Object;
.source "BackgroundBlurEffectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->showOriginalImageIsDeletedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 960
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 961
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->setResult(ILandroid/content/Intent;)V

    .line 962
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$13;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->finish()V

    .line 963
    return-void
.end method
