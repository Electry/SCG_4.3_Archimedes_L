.class Lcom/lenovo/scg/camera/effect/LiveEffectWindow$3;
.super Ljava/lang/Object;
.source "LiveEffectWindow.java"

# interfaces
.implements Lcom/lenovo/scg/camera/effect/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->initContainer()V
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
    .line 405
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1500(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->changeScreenEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Z

    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getID()I

    move-result v1

    # setter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$602(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)I

    .line 415
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPressDown in effectView id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "viewleft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "viewright = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "view.getEffectType() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->invalidate()V

    .line 418
    return-void
.end method

.method public onPressDown(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 424
    return-void
.end method

.method public onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 430
    return-void
.end method
