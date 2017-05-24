.class Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;
.super Landroid/os/Handler;
.source "ScanCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isScaning:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$002(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;Z)Z

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$100(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)F

    move-result v0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$100(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->stepSize:F
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$200(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)F

    move-result v2

    add-float/2addr v1, v2

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$102(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;F)F

    .line 222
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endAngel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$100(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->doinvalidate()V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$300(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$300(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$300(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->bgBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$302(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 233
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    const/high16 v1, -0x3d4c0000    # -90.0f

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->endAngle:F
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$102(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;F)F

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->clearAnimation()V

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isScaning:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->access$002(Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;Z)Z

    .line 240
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
