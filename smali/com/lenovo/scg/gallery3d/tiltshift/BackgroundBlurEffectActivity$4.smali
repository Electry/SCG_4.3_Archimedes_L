.class Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$4;
.super Ljava/lang/Object;
.source "BackgroundBlurEffectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->initViews()V
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
    .line 344
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->save()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$900(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    .line 349
    return-void
.end method
