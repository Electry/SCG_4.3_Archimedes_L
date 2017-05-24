.class Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;
.super Ljava/lang/Object;
.source "BrushEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x5a

    const/high16 v6, 0x40000000    # 2.0f

    .line 343
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1502(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 344
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->getScaleValue()F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1600(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v0

    .line 345
    .local v0, "scale":F
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5a

    rem-int/lit16 v4, v4, 0xb4

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1702(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;I)I

    .line 346
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1702(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;I)I

    .line 347
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v3

    if-eq v3, v7, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_2

    .line 348
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 349
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 354
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, "transWidth":F
    const/4 v1, 0x0

    .line 357
    .local v1, "transHeight":F
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 358
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapHeight:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1900(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScreenWidth:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2000(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapHeight:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1900(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float v2, v3, v4

    .line 359
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSoureViewHeight:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2100(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapWidth:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2200(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    div-float v1, v3, v6

    .line 364
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 365
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2300(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 369
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2300(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 372
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcn/jingling/sdkdemo/widgets/InkCanvas;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 373
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcn/jingling/sdkdemo/widgets/InkCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->invalidate()V

    .line 375
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v4

    # invokes: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateOriginalView(I)V
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2400(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;I)V

    .line 376
    return-void

    .line 351
    .end local v1    # "transHeight":F
    .end local v2    # "transWidth":F
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 352
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mNewMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1500(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/16 :goto_0

    .line 360
    .restart local v1    # "transHeight":F
    .restart local v2    # "transWidth":F
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->rotateDegree:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1700(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)I

    move-result v3

    if-nez v3, :cond_1

    .line 361
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScreenWidth:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2000(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapWidth:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2200(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float v2, v3, v6

    .line 362
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mSoureViewHeight:F
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$2100(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBitmapHeight:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1900(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$8;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mScale:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float v1, v3, v6

    goto/16 :goto_1
.end method
