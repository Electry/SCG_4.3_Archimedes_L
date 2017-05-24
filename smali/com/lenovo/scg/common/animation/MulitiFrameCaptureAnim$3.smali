.class Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;
.super Ljava/lang/Object;
.source "MulitiFrameCaptureAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 272
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$200(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 273
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$300(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 274
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$100(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I
    invoke-static {v3}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$400(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 275
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShowView:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$500(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # operator++ for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$408(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I

    .line 279
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$400(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mFrameCount:I
    invoke-static {v3}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$600(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$400(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimTimes:[J
    invoke-static {v3}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$700(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)[J

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # invokes: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->stopAnim()V
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$800(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V

    .line 293
    :goto_0
    return-void

    .line 283
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$400(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 284
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$100(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I
    invoke-static {v3}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$400(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 285
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 286
    const-string v2, "jiaxiaowei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------gc----mAnimIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # getter for: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I
    invoke-static {v4}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$400(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;->this$0:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    # invokes: Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->startAnim()V
    invoke-static {v2}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->access$000(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 268
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 263
    return-void
.end method
