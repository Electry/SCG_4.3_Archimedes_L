.class Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;
.super Ljava/lang/Object;
.source "StrobeModeSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->addSelectPoint(Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bScaled:Z

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

.field final synthetic val$container:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->bScaled:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->val$container:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->val$container:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->bScaled:Z

    if-eqz v0, :cond_2

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->bScaled:Z

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->val$container:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->reverseAnimation(Landroid/view/View;)V

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectPointListener:Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$300(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectPointListener:Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$300(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->bScaled:Z

    invoke-interface {v1, v0, v2}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;->onPointClicked(IZ)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->val$container:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->startAnimation(Landroid/view/View;)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;->bScaled:Z

    goto :goto_1
.end method
