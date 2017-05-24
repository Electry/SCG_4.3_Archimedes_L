.class Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$2;
.super Ljava/lang/Object;
.source "RotateEffectDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->setOnBaoHeDuChangeListener(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

.field final synthetic val$listener:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$2;->this$0:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$2;->val$listener:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 95
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 89
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$2;->val$listener:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$2;->val$listener:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;->onScgSeekBarChange(I)V

    .line 83
    :cond_0
    return-void
.end method
