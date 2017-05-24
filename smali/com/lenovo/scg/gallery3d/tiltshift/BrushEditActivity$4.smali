.class Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;
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
    .line 278
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$300(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBrushSelectBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1000(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserSelectBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1100(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mBrashName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1200(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mEraserName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1300(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcn/jingling/sdkdemo/widgets/InkCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setCanvasIsDrawn()V

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcn/jingling/sdkdemo/widgets/InkCanvas;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setPenState(I)V

    .line 291
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcn/jingling/sdkdemo/widgets/InkCanvas;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mPenWidthSeeker:Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$1400(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/SCGSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setPenWidth(I)V

    goto :goto_0
.end method
