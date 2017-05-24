.class Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;
.super Ljava/lang/Object;
.source "LiveEffectWindow.java"

# interfaces
.implements Lcom/lenovo/scg/camera/effect/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 346
    return-void
.end method

.method public onPressDown(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 4
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    const/4 v2, 0x1

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$900(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setEffectHideOrShowState(Z)V

    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v2, 0x7f0902b9

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v3, 0x7f0902ba

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 357
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->startEffectShowAnimation()V

    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->invalidate()V

    .line 359
    const-string/jumbo v0, "tyl"

    const-string v1, "ffff onPressUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 2
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->invalidate()V

    .line 368
    const-string/jumbo v0, "tyl"

    const-string v1, "ffff onPressUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method
