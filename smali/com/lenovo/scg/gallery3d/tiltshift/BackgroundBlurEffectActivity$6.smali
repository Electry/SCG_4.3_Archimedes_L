.class Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$6;
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
    .line 363
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->mBlurType:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$1000(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->ByLine:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    if-eq v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    sget-object v1, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;->ByLine:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->changeBlurType(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$1100(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$BlurType;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->changeLineIcon()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;->access$1300(Lcom/lenovo/scg/gallery3d/tiltshift/BackgroundBlurEffectActivity;)V

    .line 371
    return-void
.end method
