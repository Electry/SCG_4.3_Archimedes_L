.class Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar$1;
.super Ljava/lang/Object;
.source "RegulateEffectSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    # setter for: Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mCurrentProgress:I
    invoke-static {v0, p2}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->access$002(Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;I)I

    .line 45
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 50
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mActivity:Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->access$100(Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;)Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar$1;->this$0:Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;

    # getter for: Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->mCurrentProgress:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;->access$000(Lcom/lenovo/scg/gallery3d/specialEffects/RegulateEffectSeekBar;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectsActivity;->changeEffectBitmap(II)V

    .line 56
    return-void
.end method
