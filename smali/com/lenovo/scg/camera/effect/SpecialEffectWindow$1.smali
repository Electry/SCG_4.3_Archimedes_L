.class Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;
.super Ljava/lang/Object;
.source "SpecialEffectWindow.java"

# interfaces
.implements Lcom/lenovo/scg/camera/effect/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->initEffectContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 6
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 319
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$200(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$200(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 324
    .local v0, "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .end local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 327
    .restart local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .end local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 330
    .restart local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .end local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 333
    .restart local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .end local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 336
    .restart local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 338
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$500(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->changeScreenEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Z

    .line 339
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getID()I

    move-result v2

    # setter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$302(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;I)I

    .line 341
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .end local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 342
    .restart local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 344
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .end local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 345
    .restart local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .end local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 348
    .restart local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 350
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .end local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 351
    .restart local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 353
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    # getter for: Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .end local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    check-cast v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 354
    .restart local v0    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 356
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPressDown in effectView id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "viewleft = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "viewright = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "view.getEffectType() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;->this$0:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->invalidate()V

    .line 359
    return-void
.end method

.method public onPressDown(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 365
    return-void
.end method

.method public onPressUp(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 371
    return-void
.end method
