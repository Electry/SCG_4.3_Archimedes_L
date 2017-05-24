.class Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$4;
.super Ljava/lang/Object;
.source "SpecialEffectsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->showExitDialog()V
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
    .line 1107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1110
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->access$400(Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1112
    return-void
.end method
