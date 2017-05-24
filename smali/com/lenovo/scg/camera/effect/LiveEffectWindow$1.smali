.class Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;
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
    .line 287
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 293
    return-void
.end method

.method public onPressDown(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setEffectHideOrShowState(Z)V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->startEffectHideAnimation()V

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->invalidate()V

    .line 303
    return-void
.end method

.method public onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 7
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    const/4 v6, 0x0

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$900(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$700(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectNameId:[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$500(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$600(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$700(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->effectPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$800(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$700(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$900(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v2, 0x7f0902d4

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v3, 0x7f0902e2

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$900(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 322
    const-string/jumbo v0, "tyl"

    const-string v1, "ffff onPressUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->invalidate()V

    .line 325
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$900(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v2, 0x7f0902d6

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    const v3, 0x7f0902e1

    # invokes: Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0
.end method
