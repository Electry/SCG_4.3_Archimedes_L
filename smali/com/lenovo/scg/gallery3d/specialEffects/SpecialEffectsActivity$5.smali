.class Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$5;
.super Ljava/lang/Object;
.source "SpecialEffectsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showOriginalImageIsDeletedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)V
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1158
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->finish()V

    .line 1160
    return-void
.end method
