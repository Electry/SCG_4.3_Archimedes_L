.class Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;
.super Landroid/os/Handler;
.source "TiltShiftView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 240
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$000(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlpha:[I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$100(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$200(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlpha:[I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$100(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # operator++ for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$008(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->postInvalidate()V

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->myHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$300(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mAlphaIndex:I
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$002(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;I)I

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$200(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    # setter for: Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->mIsVisible:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->access$402(Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;Z)Z

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView$1;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/TiltShiftView;->reset()V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
